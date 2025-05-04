from django.contrib import admin
from django.urls import path
from . import views

app_name = "user"

urlpatterns = [
    path("", views.HomeView.as_view(), name="home"),
    path('signup/', views.SignupView.as_view(), name="signup"),
    path('login/', views.LoginView.as_view(), name="login"),
]