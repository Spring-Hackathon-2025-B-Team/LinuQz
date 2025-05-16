from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib import messages

# トップ画面
@login_required
def index_view(request):
    return render(request, 'home/index.html')

# アカウント編集画面
@login_required
def account_view(request):

    if request.method == 'POST':
        new_name = request.POST.get('name', '').strip()
        if new_name:
            # ユーザ名を更新
            request.user.name = new_name
            request.user.save()
            messages.success(request, 'ユーザ名を更新しました。')
            return redirect('home:index')
        else:
            messages.error(request, 'ユーザ名は必須です。')

    return render(request, 'home/account.html')