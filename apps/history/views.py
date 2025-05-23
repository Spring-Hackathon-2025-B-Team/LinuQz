from django.shortcuts import render
from django.views.generic.list import ListView
from apps.play.models import History

# ランキング表示画面
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
        choice_histories = History.objects.select_related('user_id').filter(rank_id=1).order_by('-score')[:5]
    
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
        input_histories = History.objects.select_related('user_id').filter(rank_id=2).order_by('-score')[:5]

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
