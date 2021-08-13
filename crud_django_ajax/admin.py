from django.contrib import admin
from .models import Crud_django_ajax

class Crud_django_ajaxAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'image']


admin.site.register(Crud_django_ajax, Crud_django_ajaxAdmin)
