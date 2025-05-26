from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from apps.user.models import User
from django.db import IntegrityError


# トップ画面
@login_required
def index_view(request):

    if request.user.is_staff == True:
        return render(request, 'home/admin.html')
    else:
        return render(request, 'home/index.html')

# アカウント編集画面
@login_required
def account_view(request):

    error_message = None

    if request.method == 'POST':
        new_name = request.POST.get('name', '').strip()

        if not new_name:
            error_message = 'ユーザ名を入力してください。'
        elif User.objects.filter(name=new_name).exists():
            error_message = 'このユーザ名は既に登録されています。'
        else:

            # DB登録できるかチェック
            try:
                request.user.name = new_name
                request.user.save()
                return redirect('home:index')

            # DB登録できない
            except IntegrityError:
                error_message = '予期せぬエラーが発生しました。もう一度お試しください。'

    return render(request, 'home/account.html', {'error_message': error_message})
