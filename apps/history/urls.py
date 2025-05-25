from django.urls import path, include
from .views import RankingList, IncorrectList, RetryQuestion

app_name = "history"

urlpatterns = [
    path('ranking/', RankingList.as_view(), name="ranking"),
    path('incorrect/', IncorrectList.as_view(), name="incorrect"),
    path('retry/<uuid:pk>/', RetryQuestion.as_view(), name="retry"),
]
