from django.db import models
from django.contrib.auth import get_user_model
from apps.question.models import Question
import uuid


User = get_user_model()


class Histories(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    rank_id = models.IntegerField(verbose_name='ランクID', null=False)
    play_date = models.DateTimeField(verbose_name='実施日時', auto_now_add=True)
    score = models.IntegerField(verbose_name='得点', null=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class Incorrects(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    question = models.ForeignKey(Question, on_delete=models.CASCADE)

    class Meta:
        constraints = [
            models.UniqueConstraint(fields=['user', 'question'], name='unique_user_question')
        ]