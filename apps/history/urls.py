from django.urls import path
from .views import RankingList, IncorrectList, ChallengeList
from . import views

app_name = "history"

urlpatterns = [
    path('ranking/', RankingList.as_view(), name="ranking"),
    path('challenge/', ChallengeList.as_view(), name='challenge'),
    path('incorrect/', IncorrectList.as_view(), name="incorrect"),
    path('retry/<uuid:pk>/', views.retry_view, name='retry'),
    path('result/', views.result_view, name='result'),
    path('delete/<uuid:pk>/', views.delete_view, name='delete'),
]
