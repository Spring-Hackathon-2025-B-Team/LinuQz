from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from django.utils import timezone
from datetime import timedelta
from random import sample
from uuid import UUID
from django.conf import settings
from apps.question.models import Question
from apps.user.models import User
from .models import History, Incorrect


# 問題開始画面
@login_required
def start_view(request):

    rank = request.GET.get('rank', 'choice')

    context = {
        "TIME_LIMIT": settings.TIME_LIMIT,  # 制限時間
        "NUMBER_OF_QUESTIONS": settings.NUMBER_OF_QUESTIONS,  # 問題数
        'rank': rank,
        'rank_display': {
            'choice': '選択',
            'input': '記述'
        }.get(rank, '選択')
    }

    return render(request, 'play/start.html', context)


# 初期化処理（問題開始時に1度だけ実施）
@login_required
def question_init(request):

    rank = request.GET.get('rank', 'choice')

    # ランクが「choice（選択問題）」の場合
    if(rank == "choice"):
        # 「rank_id=1」のデータを全量取得（対象データのidをリスト化して取得）
        question_ids = list(Question.objects.filter(rank_id=1).values_list('id', flat=True))

    # ランクが「input（記述問題）」の場合
    if(rank == "input"):
        # 「rank_id=2」のデータを全量取得（対象データのidをリスト化して取得）
        question_ids = list(Question.objects.filter(rank_id=2).values_list('id', flat=True))

    # idのリストから問題をランダムで抽出（問題数は定数で定義）
    selected_ids = sample(question_ids, settings.NUMBER_OF_QUESTIONS)

    # 問題配列としてセッションに格納（UUIDをセッションで扱うために文字列化してから格納）
    request.session["question_ids"] = [str(qid) for qid in selected_ids]

    # ランクをセッションで管理
    request.session["rank"] = rank

    # セッションで管理する問題番号の初期化（0を設定）
    request.session["current"] = 0

    # セッションで管理するユーザ回答配列の初期化
    request.session["user_answers"] = []

    # 開始時刻をセッションに格納（isoformatで文字列に変換）
    request.session["start_time"] = timezone.now().isoformat()

    # 問題実施画面にリダイレクト
    return redirect("play:question")


# 問題実施処理（問題ごとに呼び出される）
@login_required
def question_view(request):

    # ランクを取得
    rank = request.session.get("rank", "choice")

    # 現在の問題番号を取得（取得できない場合、0を設定）
    current = request.session.get("current", 0)

    # 開始時刻を取得
    start_time_str = request.session.get("start_time")

    # 開始時刻が取得できた場合
    if start_time_str:

        # 開始時刻を文字列からdatetimeオブジェクトに変換
        start_time = timezone.datetime.fromisoformat(start_time_str)

        # 現在時刻と開始時刻の差分を取得
        elapsed = timezone.now() - start_time

        # 制限時間を過ぎた場合、タイムオーバー処理
        if elapsed > timedelta(seconds=settings.TIME_LIMIT):

            # ユーザ回答数を取得
            answered = len(request.session.get("user_answers", []))

            # 問題数からユーザ回答数を引き、未回答問題数を算出
            remaining = settings.NUMBER_OF_QUESTIONS - answered

            # 未回答分について、ユーザ回答配列に「-1」を設定
            request.session["user_answers"] += [-1] * remaining

            # 結果画面にリダイレクト
            return redirect("play:result") 

    # 問題配列(id)をセッションから取得(文字列型で格納しているのでuuid型に戻す)
    question_ids_str = request.session.get("question_ids", [])  
    question_ids = [UUID(s) for s in question_ids_str]

    # 問題数に達した場合（時間内に全問回答した場合）
    if current >= len(question_ids):

        # 残り時間を整数で算出（マイナスになった時は0を適用）
        remaining_time = max(0, settings.TIME_LIMIT - int(elapsed.total_seconds()))

        # 残り時間をセッションに格納
        request.session["remaining_time"] = remaining_time

        # 結果画面にリダイレクト
        return redirect("play:result")

    # POSTメソッドの時（=回答時）
    if request.method == "POST":

        # 選択した内容（回答）を取得
        if rank == "choice":
            selected = request.POST.get("choice")
        elif rank == "input":
            selected = request.POST.get("input")

        # 選択した内容（回答）をユーザ回答配列に格納
        request.session["user_answers"].append(selected)

        # 問題番号をカウントアップ
        request.session["current"] = current + 1

        # 問題実施画面にリダイレクト（次の問題へ）
        return redirect("play:question")

    # questionsテーブルから次の問題を取得
    question_id = question_ids[current]
    question_obj = get_object_or_404(Question, pk=question_id)

    # ランクが「choice（選択問題）」の場合
    if(rank == "choice"):

        # 問題実施画面（選択問題用）を表示
        return render(request, "play/question.html", {
            "rank": rank,  # ランク
            "number": current + 1,  # 問題番号
            "question_obj": question_obj,  # 問題
            "choices": enumerate(question_obj.get_choices()),  # 選択肢の配列
            "TIME_LIMIT": settings.TIME_LIMIT,  # 制限時間
            "start_time_js": request.session.get("start_time"),  # 開始時刻
        })

    # ランクが「input（記述問題）」の場合
    if(rank == "input"):

        # 問題実施画面（記述問題用）を表示
        return render(request, "play/question.html", {
            "rank": rank,  # ランク
            "number": current + 1,  # 問題番号
            "question_obj": question_obj,  # 問題
            "TIME_LIMIT": settings.TIME_LIMIT,  # 制限時間
            "start_time_js": request.session.get("start_time"),  # 開始時刻
        })


# 結果画面
@login_required
def result_view(request):

    # ランクを取得
    rank = request.session.get("rank", "choice")

    # 問題配列(id)をセッションから取得(文字列型で格納しているのでuuid型に戻す)
    question_ids_str = request.session.get("question_ids", [])  
    question_ids = [UUID(s) for s in question_ids_str]

    # 問題配列(id以外も含めた全量)を取得
    questions = [get_object_or_404(Question, pk=qid) for qid in question_ids]

    # ユーザ回答配列をセッションから取得
    user_answers = request.session.get("user_answers", [])

    # 結果配列を初期化
    results = []

    # セッションで管理する不正解配列の初期化
    request.session["incorrects"] = []

    # 各種変数を初期化
    score = 0  # 得点
    correct_count = 0  # 正解数
    correct_point = 0  # 正解ポイント
    incorrect_count = 0  # 不正解数
    incorrect_point = 0  # 不正解ポイント
    remaining_time = 0  # 残り時間

    # 解答と回答を照合
    for question, user_answer in zip(questions, user_answers):

        # 解答と回答が一致する場合、正解フラグを立てる
        is_correct = (user_answer == question.answer)

        # 正解の場合
        if is_correct:
            correct_count += 1  # 正解数をカウント

            # ランクが「choice（選択問題）」の場合
            if(rank == "choice"):
                score += settings.RANK_1_CORRECT_POINT  # 得点に加算（choice用のポイント）
                correct_point += settings.RANK_1_CORRECT_POINT  # 正解ポイントを加算（choice用のポイント）
            # ランクが「input（記述問題）」の場合
            elif(rank == "input"):
                score += settings.RANK_2_CORRECT_POINT  # 得点に加算（input用のポイント）
                correct_point += settings.RANK_2_CORRECT_POINT  # 正解ポイントを加算（input用のポイント）

        # 不正解の場合
        else :
            incorrect_count += 1  # 不正解数をカウント

            # ランクが「choice（選択問題）」の場合
            if(rank == "choice"):
                score += settings.RANK_1_INCORRECT_POINT  # 得点から減算（choice用のポイント）
                incorrect_point += settings.RANK_1_INCORRECT_POINT  # 不正解ポイントを減算（choice用のポイント）
            # ランクが「input（記述問題）」の場合
            elif(rank == "input"):
                score += settings.RANK_2_INCORRECT_POINT  # 得点から減算（input用のポイント）
                incorrect_point += settings.RANK_2_INCORRECT_POINT  # 不正解ポイントを減算（input用のポイント）

            # 不正解配列に不正解だった問題のidを追加
            request.session["incorrects"].append(str(question.id))


        # 回答が「-1」の場合
        if user_answer == -1:
            user_text = "未回答"  # 結果画面の回答欄に「未回答」を設定

        # 回答が「-1」以外の場合（何かしら回答した場合）
        else:
            user_text = user_answer  # 結果画面の回答欄にユーザ回答を設定


        # 結果配列に追加
        results.append({
            "id": question.id,  # 問題id
            "question": question.question,  # 問題文
            "answer": question.answer,  # 解答
            "user_answer": user_text,  # 回答
            "is_correct": is_correct,  # 正誤
        })

    # セッションから残り時間を取得
    remaining_time = request.session.get("remaining_time", 0)

    # 得点に残り時間を加算
    score += remaining_time

    # 得点がマイナスの場合、0にする（=最低点は0）
    if score < 0:
        score = 0

    # rank_idの取得
    if(rank == "choice"):
        rank_id=1
    elif(rank == "input"):
        rank_id=2

    # 得点をセッションで管理
    request.session["score"] = score

    # 結果画面を表示
    return render(request, "play/result.html", {
        "results": results, # 結果配列
        "score": score, # 得点
        "correct_count": correct_count, # 正解数
        "correct_point": correct_point, # 正解ポイント
        "incorrect_count": incorrect_count, # 不正解数
        "incorrect_point": incorrect_point, # 不正解ポイント
        "remaining_time": remaining_time, # 残り時間
        "rank": rank, # ランク
        "RANK_1_CORRECT_POINT": settings.RANK_1_CORRECT_POINT,
        "RANK_1_INCORRECT_POINT": settings.RANK_1_INCORRECT_POINT,
        "RANK_2_CORRECT_POINT": settings.RANK_2_CORRECT_POINT,
        "RANK_2_INCORRECT_POINT": settings.RANK_2_INCORRECT_POINT,
    })


# 問題実施中に制限時間に達した場合の強制終了処理
@login_required
def result_force(request):

    # ユーザ回答数を取得
    answered = len(request.session.get("user_answers", []))

    # 問題数からユーザ回答数を引き、未回答問題数を算出
    remaining = settings.NUMBER_OF_QUESTIONS - answered

    # 未回答分について、ユーザ回答配列に「-1」を設定
    request.session["user_answers"] += [-1] * remaining

    # 結果画面へリダイレクト
    return redirect("play:result")


# 解説画面
@login_required
def answer_view(request,pk):

    question = get_object_or_404(Question, pk=pk)
    return render(request, 'play/answer.html', {'question': question})


# 経験値取得画面
@login_required
def exp_view(request):

    # セッションからランクを取得
    rank = request.session.get("rank")

    # rank_idの取得
    if(rank == "choice"):
        rank_id=1
    elif(rank == "input"):
        rank_id=2

    # セッションから得点を取得
    score = request.session.get("score")

    # ユーザの現在のレベルを取得
    # （tmp_levelを経由しているのは、request.user.levelを変えるとcurrent_levelも変わることを防ぐため）
    tmp_level = request.user.level
    current_level = tmp_level

    # ユーザの現在の経験値を取得
    current_exp = request.user.exp

    # 経験値に得点を加算
    total_exp = current_exp + score

    # 次のレベルに必要な経験値を算出
    next_exp = current_level ** 2 * settings.EXP_COEFFICIENT

    # 次のレベルまでの残り経験値を初期化
    left_exp = 0

    # レベル5（最大レベル）の場合はチェックしない
    if current_level != 5:

        # 経験値が次のレベルに必要な経験値以上の場合
        if total_exp >= next_exp:

            # レベルアップ
            new_level = current_level + 1

        else:

            # レベルアップ据え置き
            new_level = current_level

            # 次のレベルまでの残り経験値を算出
            left_exp = next_exp - total_exp

    else:
        new_level = current_level

    # ユーザ情報を更新（レベル・経験値）
    request.user.level = new_level
    request.user.exp = total_exp
    request.user.save()

    # ユーザid(uuid)を取得
    user_id = User.objects.get(id=request.user.id)

    # 実施履歴テーブルの更新
    History.objects.create(
        user=user_id,
        rank_id=rank_id,
        score=score,
    )

    # 不正解配列(不正解だった問題のid)をセッションから取得(文字列型で格納しているのでuuid型に戻す)
    incorrects_str = request.session.get("incorrects", [])  
    incorrects_ids = [UUID(s) for s in incorrects_str]

    for incorrect_id in incorrects_ids:

        # 問題id(uuid)を取得
        question_id = Question.objects.get(id=incorrect_id)

        # 不正解テーブルの更新
        Incorrect.objects.create(
            user=user_id,
            question=question_id,
        )

    # 経験値取得画面を表示
    return render(request, "play/exp.html", {
        "current_level": current_level, # 現在のレベル
        "new_level": new_level, # 新しいレベル
        "score": score, # 得点
        "total_exp": total_exp, # 得点加算後の経験値
        "left_exp": left_exp, # 次のレベルに必要な経験値
    })
