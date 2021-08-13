from django.db import models
from django.utils import timezone


class Customer(models.Model):
    username = models.CharField(max_length=20, blank=True, null=True)
    password = models.CharField(max_length=20, blank=True, null=True)
    createdAt = models.DateTimeField("Created At", auto_now_add=True)

    # def __str__(self):
    #     return self.id
