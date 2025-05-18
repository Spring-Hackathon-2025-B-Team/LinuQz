from django.shortcuts import render
from django.views.generic.list import ListView
from .models import Histories


class RankingList(ListView):
    """難易度別に上位のユーザーを取得するためのビュー"""
    template_name = 'history/ranking.html'
    model = Histories
    
    def get_context_data(self, **kwargs):
        """
        履歴モデルに記録されたスコアに基づき、各難易度（初級、中級、上級）の上位3名のユーザーを表示。
        データは `rank_id` でグループ化する。
        - rank_id = 1 は初級を表す。
        - rank_id = 2 は中級を表す。
        - rank_id = 3 は上級を表す。
        このビューでは、関連するユーザーデータを効率的に取得するために `select_related('user')` を使用。
        contextには、`ranking_BEGINNER`、`ranking_INTERMEDIATE`、`ranking_ADVANCED` の3つのクエリセットが含まれる。
        """
        context = super().get_context_data(**kwargs)
        context['ranking_BEGINNER'] = Histories.objects.select_related('user').filter(rank_id=1).order_by('-score')[:3]
        context['ranking_INTERMEDIATE'] = Histories.objects.select_related('user').filter(rank_id=2).order_by('-score')[:3]
        context['ranking_ADVANCED'] = Histories.objects.select_related('user').filter(rank_id=3).order_by('-score')[:3]
        return context