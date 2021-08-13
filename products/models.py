from django.db import models
from django.utils import timezone
# from django.utils.html import mark_safe


class Products(models.Model):
    product_name = models.CharField(max_length=20, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    image = models.ImageField(upload_to='products')
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

    # def __str__(self):
    #     return self.product_name
