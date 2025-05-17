from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from .models import Question
from .forms import QuestionForm
from django.conf import settings

# 問題一覧画面
@login_required
def index_view(request):

    # 問題テーブルから全レコード取得(更新日時の降順)
    questions = Question.objects.all().order_by('-updated_at')

    return render(request, "question/index.html", {
        'questions': questions,
        'RANK_1_NAME': settings.RANK_1_NAME,
        'RANK_2_NAME': settings.RANK_2_NAME,
    })

# 問題作成画面
@login_required
def create_view(request):

    if request.method == 'POST':
        form = QuestionForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('question:index')  # 成功時、問題一覧画面にリダイレクト
    else:
        form = QuestionForm()
    return render(request, 'question/create.html', {'form': form})

# 問題編集画面
@login_required
def edit_view(request,pk):
    # 該当レコードがなければ404エラーを返す
    question = get_object_or_404(Question, pk=pk)

    if request.method == 'POST':
        form = QuestionForm(request.POST, instance=question)
        if form.is_valid():
            form.save()
            return redirect('question:index') 
    else:
        form = QuestionForm(instance=question)

    return render(request, 'question/edit.html', {'form': form, 'question': question})

# 問題削除（画面なし）
@login_required
def delete_view(request,pk):
    # 該当レコードがなければ404エラーを返す
    question = get_object_or_404(Question, pk=pk)
    question.delete()
    return redirect('question:index') 
