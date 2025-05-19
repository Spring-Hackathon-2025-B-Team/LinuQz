from django.urls import path
from . import views

app_name = "question"

urlpatterns = [
    path('', views.index_view, name='index'),
    path('create', views.create_view, name='create'),
    path('edit/<uuid:pk>/', views.edit_view, name='edit'),
    path('delete/<uuid:pk>/', views.delete_view, name='delete'),
]
