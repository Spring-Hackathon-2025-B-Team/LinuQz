from django.contrib.auth import login, authenticate
from django.views.generic import TemplateView, CreateView
from django.urls import reverse_lazy
from .forms import SignUpForm

class HomeView(TemplateView):
    template_name = "home.html"

class LoginView(TemplateView):
    template_name = "user/login.html"

# ユーザー登録ビュー
class SignupView(CreateView):
    form_class = SignUpForm
    template_name = "user/signup.html"
    success_url = reverse_lazy("user:home")

    def form_valid(self, form):
        response = super().form_valid(form)
        email = form.cleaned_data.get("email")
        password = form.cleaned_data.get("password1")
        user = authenticate(self.request, email=email, password=password)
        if user is not None:
            login(self.request, user)
        return response
