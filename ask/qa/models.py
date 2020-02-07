from django.db import models
from django.contrib.auth.models import User


class QuestionManager(models.Manager):
    def new(self):
        return self.order_by('-id')
    def popular(self):
        return self.order_by('-rating')


class Question(models.Model):
    objects = QuestionManager()
    title = models.CharField(max_length=255)
    text = models.TextField()
    added_at = models.DateTimeField(auto_now=True)
    rating = models.IntegerField(null=True)
    author = models.ForeignKey(User, related_name='question_author')
    likes = models.ManyToManyField(User, related_name='question_likes')

class Answer(models.Model):
    text = models.TextField()
    added_at = models.DateTimeField(auto_now=True)
    question = models.ForeignKey(Question)
    author = models.ForeignKey(User, related_name='answer_author')
