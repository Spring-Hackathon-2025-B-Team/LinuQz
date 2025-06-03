from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.views.generic import RedirectView

urlpatterns = [
    path('', RedirectView.as_view(url='/user/login/', permanent=False)),
    path('admin/', admin.site.urls),
    path('user/', include('apps.user.urls')),
    path('home/', include('apps.home.urls')),
    path('play/', include('apps.play.urls')),
    path('question/', include('apps.question.urls')),
    path('history/', include('apps.history.urls')),
]

urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
