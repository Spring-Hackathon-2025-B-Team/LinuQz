from django.urls import path
from . import views

app_name = "play"

urlpatterns = [
    path('start/', views.start_view, name='start'),
    path('question/init', views.question_init, name='question_init'),
    path('question/', views.question_view, name='question'),
    path('result/', views.result_view, name='result'),
    path("result/force", views.result_force, name="result_force"),
]
