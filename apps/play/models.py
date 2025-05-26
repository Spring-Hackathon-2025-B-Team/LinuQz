import uuid
from django.db import models
from django.contrib.auth import get_user_model
from apps.question.models import Question

User = get_user_model()


# 実施履歴テーブル（histories）作成
class History(models.Model):

    # 主キーをuuidで定義
    id = models.UUIDField(
        primary_key=True,
        default=uuid.uuid4,
        editable=False
    )

    # ユーザID（外部キー）
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    # ランクID
    rank_id = models.IntegerField(null=False,blank=False)

    # 得点
    score = models.IntegerField(null=False,blank=False)

    # 作成日時（auto_now_add=True で「レコード作成時に自動セット」）
    created_at = models.DateTimeField(auto_now_add=True)

    # 更新日時（auto_now=True で「レコード更新時に自動更新」）
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        #明示的にテーブル名を指定（これをしないと、「アプリ名(小文字)_モデル名(小文字)」で自動命名される）
        db_table = 'histories'


# 不正解テーブル（incorrects）作成
class Incorrect(models.Model):

    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)

    # ユーザID（外部キー）
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    # 問題ID（外部キー）
    question = models.ForeignKey(Question, on_delete=models.CASCADE)

    # 作成日時（auto_now_add=True で「レコード作成時に自動セット」）
    created_at = models.DateTimeField(auto_now_add=True)

    # 更新日時（auto_now=True で「レコード更新時に自動更新」）
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        constraints = [
            models.UniqueConstraint(fields=['user', 'question'], name='unique_user_question')
        ]

    class Meta:
        #明示的にテーブル名を指定（これをしないと、「アプリ名(小文字)_モデル名(小文字)」で自動命名される）
        db_table = 'incorrects'
