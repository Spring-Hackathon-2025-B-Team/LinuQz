from django.urls import path, include
from .views import RankingList, IncorrectList, RetryQuestion, RetryAnswer, IncorrectDelete

app_name = "history"

urlpatterns = [
    path('ranking/', RankingList.as_view(), name="ranking"),
    path('incorrect/', IncorrectList.as_view(), name="incorrect"),
    path('retry/<uuid:pk>/', RetryQuestion.as_view(), name="retry"),
    path('retry-answer/<uuid:pk>/', RetryAnswer.as_view(), name="retry-answer"),
    path('delete/<uuid:pk>/', IncorrectDelete.as_view(), name='delete'),
]
