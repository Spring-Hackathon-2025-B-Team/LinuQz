from django.urls import path, include
from .views import RankingList, IncorrectList


app_name = "history"


urlpatterns = [
    path('ranking/', RankingList.as_view(), name="ranking"),
    path('incorrect/', IncorrectList.as_view(), name="incorrect"),
]