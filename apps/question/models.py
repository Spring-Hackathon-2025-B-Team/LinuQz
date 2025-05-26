from django.db import models
from django.conf import settings
import uuid

RANK_ID = ((1,settings.RANK_1_NAME),(2,settings.RANK_2_NAME))

# questionsテーブル作成
class Question(models.Model):

    # 主キーをUUIDで作成
    id = models.UUIDField(
        # primary_key=Trueにすると通常のAutoField(id)は作成されない
        primary_key=True,
        # 新規作成時にランダムUUIDが自動セット
        default=uuid.uuid4,
        # 管理画面などでも変更不可とする
        editable=False
    )

    # ランクID（プルダウンで定義）
    rank_id = models.IntegerField(choices = RANK_ID,null=False,blank=False)

    # 問題文
    question = models.TextField(max_length=255,null=False,blank=False)

    # 選択肢1～4
    choice_1 = models.CharField(max_length=50,blank=True, null=True)
    choice_2 = models.CharField(max_length=50,blank=True, null=True)
    choice_3 = models.CharField(max_length=50,blank=True, null=True)
    choice_4 = models.CharField(max_length=50,blank=True, null=True)

    # 解答
    answer = models.CharField(max_length=50,null=False,blank=False)

    # 解説文
    explanation = models.TextField(max_length=255,null=False,blank=False)

    # 作成日時（auto_now_add=True で「レコード作成時に自動セット」）
    created_at = models.DateTimeField(auto_now_add=True)

    # 更新日時（auto_now=True で「レコード更新時に自動更新」）
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        #明示的にテーブル名を指定（これをしないと、「アプリ名(小文字)_モデル名(小文字)」で自動命名される）
        db_table = 'questions'

    def get_choices(self):
        return [self.choice_1, self.choice_2, self.choice_3, self.choice_4]
