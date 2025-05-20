from django.shortcuts import render, redirect


# 問題開始画面
def start_view(request):

    rank = request.GET.get('rank', 'choice')

    context = {
        'rank': rank,
        'rank_display': {
            'choice': '選択',
            'input': '記述'
        }.get(rank, '選択')
    }

    return render(request, 'play/start.html', context)


# 初期化処理（問題開始時に1度だけ実施）
def question_init(request):

    # 問題実施画面にリダイレクト
    return redirect("play:question")


# 問題実施処理（問題ごとに呼び出される）
def question_view(request):
    return render(request, 'play/question.html')


# 結果画面
def result_view(request):
    return render(request, "play/result.html")


# 問題実施中に制限時間に達した場合の強制終了処理
def result_force(request):

    # 結果画面へリダイレクト
    return redirect("play:result")

