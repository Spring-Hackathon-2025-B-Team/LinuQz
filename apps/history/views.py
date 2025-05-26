from django.utils.decorators import method_decorator
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from django.views.generic.list import ListView
from apps.play.models import History, Incorrect
from django.conf import settings


# ランキング表示画面
@method_decorator(login_required, name='dispatch')
class RankingList(ListView):

    """ランク別に上位のユーザーを取得するためのビュー"""
    template_name = 'history/ranking.html'
    model = History
    
    def get_context_data(self, **kwargs):
        """
        実施履歴テーブルに記録されたスコアに基づき、各ランク（選択・記述）の上位5名のユーザーを表示。
        データは `rank_id` でグループ化する。
        - rank_id = 1 は選択問題
        - rank_id = 2 は記述問題
        このビューでは、関連するユーザーデータを効率的に取得するために `select_related('user')` を使用。
        contextには、`ranking_CHOICE`、`ranking_INPUT` の2つのクエリセットが含まれる。
        """

        context = super().get_context_data(**kwargs)
        # 選択問題のランキングデータ抽出
        choice_histories = History.objects.select_related('user').filter(rank_id=1).order_by('-score')[:5]
    
        choice_ranking = []
        prev_score = None
        ranking = 0
        count = 0 

        for h in choice_histories:
            count += 1
            if h.score != prev_score:
                ranking = count
                prev_score = h.score
            choice_ranking.append({
                'ranking': ranking,
                'history': h,
            })

        context['ranking_CHOICE'] = choice_ranking

        # 記述問題のランキングデータ抽出
        input_histories = History.objects.select_related('user').filter(rank_id=2).order_by('-score')[:5]

        input_ranking = []
        prev_score = None
        ranking = 0
        count = 0 

        for h in input_histories:
            count += 1
            if h.score != prev_score:
                ranking = count
                prev_score = h.score
            input_ranking.append({
                'ranking': ranking,
                'history': h,
            })

        context['ranking_INPUT'] = input_ranking

        return context


# 不正解一覧画面
@method_decorator(login_required, name='dispatch')
class IncorrectList(ListView):

    """不正解一覧を取得するためのビュー"""
    template_name = 'history/incorrect.html'
    model = Incorrect
    context_object_name = 'incorrect_list'

    def get_queryset(self):

        """ログイン中のユーザーの不正解一覧を取得"""
        queryset = Incorrect.objects.filter(user_id=self.request.user).order_by('-created_at')
        return queryset

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        # 追加の変数を渡す
        context['RANK_1_NAME'] = settings.RANK_1_NAME
        context['RANK_2_NAME'] = settings.RANK_2_NAME
        return context


# 再チャレンジ画面
@login_required
def retry_view(request,pk):

    incorrect = get_object_or_404(Incorrect, pk=pk)
    return render(request, 'history/retry.html', {'incorrect': incorrect, "choices": enumerate(incorrect.question.get_choices())})


# 再チャレンジ結果画面
@login_required
def result_view(request):

    rank = int(request.POST.get("rank"))

    if rank == 1:
        selected = request.POST.get("choice")
    elif rank == 2:
        selected = request.POST.get("input")

    incorrect_id = request.POST.get("incorrect")
    incorrect = get_object_or_404(Incorrect, pk=incorrect_id)

    # ランクが「choice（選択問題）」の場合
    if rank == 1:

        # 再チャレンジ結果画面（選択問題用）を表示
        return render(request, "history/result.html", {
            "rank": rank,  # ランク
            "incorrect": incorrect,  # 不正解問題
            "choices": enumerate(incorrect.question.get_choices()),  # 選択肢の配列
            "selected": selected, # 回答
        })

    # ランクが「input（記述問題）」の場合
    if rank == 2:

        # 再チャレンジ結果画面（記述問題用）を表示
        return render(request, "history/result.html", {
            "rank": rank,  # ランク
            "incorrect": incorrect,  # 不正解問題
            "selected": selected, # 回答
        })


# 不正解問題削除（画面なし）
@login_required
def delete_view(request,pk):

    # 該当レコードがなければ404エラーを返す
    incorrect = get_object_or_404(Incorrect, pk=pk)
    incorrect.delete()
    return redirect('history:incorrect') 
