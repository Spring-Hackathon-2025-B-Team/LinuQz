from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib import messages

# 問題一覧画面
@login_required
def index_view(request):
    return render(request, 'question/index.html')

# 問題作成画面
@login_required
def create_view(request):
    return render(request, 'question/create.html')

# 問題編集画面
@login_required
def edit_view(request):
    return render(request, 'question/edit.html')

# 問題削除（画面なし）
@login_required
def delete_view(request):
    return redirect('question:index') 
