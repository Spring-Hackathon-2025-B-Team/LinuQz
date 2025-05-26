from django.db import models
from django.contrib.auth.models import AbstractBaseUser, PermissionsMixin, BaseUserManager
import uuid

# カスタムユーザーのマネージャークラス（ユーザ作成用のロジックを提供）
class UserManager(BaseUserManager):
    # ユーザ作成の共通処理（内部利用用）
    def _create_user(self, name, email, password, **extra_fields):
        if not name:
            raise ValueError('名前は必須です')
        if not email:
            raise ValueError('メールアドレスは必須です')
        if not password:
            raise ValueError("パスワードは必須です。")
        email = self.normalize_email(email)
        user = self.model(name=name, email=email,  **extra_fields)
        user.set_password(password)
        user.save(using=self.db)
        return user

    # 一般ユーザの作成
    def create_user(self, name, email, password, **extra_fields):
        extra_fields.setdefault('is_staff', False)
        extra_fields.setdefault('is_superuser', False)
        return self._create_user(name, email, password, **extra_fields)

    # スーパーユーザ（管理者）の作成
    def create_superuser(self, name, email, password, **extra_fields):
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)
        if extra_fields.get('is_staff') is not True:
            raise ValueError('スーパーユーザは is_staff=True である必要があります。')
        if extra_fields.get('is_superuser') is not True:
            raise ValueError('スーパーユーザは is_superuser=True である必要があります。')
        return self._create_user(name, email, password, **extra_fields)

# カスタムユーザーモデル
class User(AbstractBaseUser, PermissionsMixin):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(verbose_name='ユーザ名', max_length=20, unique=True)
    email = models.EmailField(verbose_name='メールアドレス', max_length=50, unique=True)
    level = models.IntegerField(verbose_name='レベル', default=1, null=False, blank=False)
    exp = models.IntegerField(verbose_name='経験値', default=0, null=False, blank=False)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False) 
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    objects = UserManager()
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['name']

    class Meta:
        #明示的にテーブル名を指定（これをしないと、「アプリ名(小文字)_モデル名(小文字)」で自動命名される）
        db_table = 'users'
        swappable = 'AUTH_USER_MODEL'

    def clean(self):
        super().clean()
        self.email = self.__class__.objects.normalize_email(self.email)
    
    @property
    def username(self):
        return self.name