from django.contrib import admin
from django.urls import path
from . import views

app_name = "user"

urlpatterns = [
    path('signup/', views.SignupView.as_view(), name="signup"),
    path('login/', views.LoginView.as_view(), name="login"),
    path('logout/', views.LogoutView.as_view(), name="logout"),
    path('userlist/', views.userlist_view, name="userlist"),
    path('delete/<uuid:pk>/', views.delete_view, name="delete"),
]