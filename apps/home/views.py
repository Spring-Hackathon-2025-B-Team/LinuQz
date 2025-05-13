from django.shortcuts import render
from django.contrib.auth.decorators import login_required

# トップ画面（ログイン必須）
@login_required
def index_view(request):
    return render(request, 'home/index.html')
