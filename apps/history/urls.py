from django.urls import path, include
from .views import RankingList


app_name = "history"


urlpatterns = [
    path('ranking/', RankingList.as_view(), name="ranking")
]