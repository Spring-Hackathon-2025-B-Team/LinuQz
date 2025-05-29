from django.urls import path
from . import views

app_name = "home"

urlpatterns = [
    path('', views.index_view, name='index'),
    path('account', views.account_view, name='account'),
    path('bonus', views.bonus_view, name='bonus'),
    path('thanks', views.thanks_view, name='thanks'),
]
