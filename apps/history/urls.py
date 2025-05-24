from django.urls import path, include
from .views import RankingList, IncorrectList, RetryView, delete_view


app_name = "history"


urlpatterns = [
    path('ranking/', RankingList.as_view(), name="ranking"),
    path('incorrect/', IncorrectList.as_view(), name="incorrect"),
    path('retry/<uuid:pk>', RetryView.as_view(), name="retry"),
    path('retry-answer/<uuid:pk>', RetryView.as_view(), name="retry"),
    path('delete/<uuid:pk>/', delete_view, name='delete'),
]