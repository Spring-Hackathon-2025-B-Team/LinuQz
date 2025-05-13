from django import forms
from django.contrib.auth import authenticate
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from .models import User

# カスタムユーザーモデル用のユーザー登録フォーム
class SignUpForm(UserCreationForm):
  
    class Meta:
        model = User
        fields = ('name', 'email')

    def __init__(self, *args, **kwargs):
        super(SignUpForm, self).__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs.update({'class': 'form-control'})


class LoginForm(AuthenticationForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        username_max_length = 50
        self.fields["username"].max_length = username_max_length
        self.fields['username'].label = 'メールアドレス'
        self.fields['username'].widget.attrs.update({'class': 'form-control'})
        self.fields['password'].widget.attrs.update({'class': 'form-control'})
    def clean(self):
        email = self.cleaned_data.get('username') 
        password = self.cleaned_data.get('password')

        if email and password:
            self.user_cache = authenticate(self.request, username=email, password=password)
            if self.user_cache is None:
                raise forms.ValidationError("メールアドレスまたはパスワードが正しくありません")
            self.confirm_login_allowed(self.user_cache)
        
        return self.cleaned_data

    def get_user(self):
        return self.user_cache
