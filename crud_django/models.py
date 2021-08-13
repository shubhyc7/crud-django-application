from django.db import models
from django.utils import timezone

class Crud_django(models.Model):
    name = models.CharField(max_length=20, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    image = models.ImageField(upload_to='crud_django')
    is_active = models.IntegerField(default=1,
                                    blank=True,
                                    null=True,
                                    help_text='1->Active, 0->Inactive',
                                    choices=(
                                        (1, 'Active'), (0, 'Inactive')
                                    ))
    createdAt = models.DateTimeField("Created At", auto_now_add=True)
    updated_on = models.DateTimeField(default=timezone.now,
                                      null=True,
                                      blank=True
                                      )

def __str__(self):
        return self.name
