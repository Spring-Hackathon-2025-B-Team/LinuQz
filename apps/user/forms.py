from django.contrib.auth.forms import UserCreationForm
from .models import User

# カスタムユーザーモデル用のユーザー登録フォーム
class SignUpForm(UserCreationForm):
    usable_password = None
    class Meta:
        model = User
        fields = ('name', 'email')

    def __init__(self, *args, **kwargs):
        super(SignUpForm, self).__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs.update({'class': 'form-control'})
