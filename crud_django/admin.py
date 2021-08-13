from django.contrib import admin
from .models import Crud_django
# Register your models here.
class Crud_djangoAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'image']

admin.site.register(Crud_django, Crud_djangoAdmin)