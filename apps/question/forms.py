from django import forms
from .models import Question

class QuestionForm(forms.ModelForm):
    class Meta:
        model = Question
        fields = ['rank_id', 'question', 'choice_1', 'choice_2', 'choice_3', 'choice_4', 'answer', 'explanation']
        labels = {
            'rank_id': 'ランク',
            'question': '問題文',
            'choice_1': '選択肢1',
            'choice_2': '選択肢2',
            'choice_3': '選択肢3',
            'choice_4': '選択肢4',
            'answer': '解答',
            'explanation': '解説文',
        }