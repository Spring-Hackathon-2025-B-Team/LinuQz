import uuid
from django.db import models
from apps.user.models import User

# 実施履歴テーブル（histories）作成
class History(models.Model):

    # 主キーをuuidで定義
    id = models.UUIDField(
        primary_key=True,
        default=uuid.uuid4,
        editable=False
    )

    # ユーザID（外部キー）
    user_id = models.ForeignKey(User, on_delete=models.CASCADE)

    # ランクID
    rank_id = models.IntegerField(null=False,blank=False)

    # 得点
    score = models.IntegerField(null=False,blank=False)

    # 作成日時（auto_now_add=True で「レコード作成時に自動セット」）
    created_at = models.DateTimeField(auto_now_add=True)

    # 更新日時（auto_now=True で「レコード更新時に自動更新」）
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        #明示的にテーブル名を指定
        db_table = 'histories'
