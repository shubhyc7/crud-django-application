from django.contrib import admin
from products_ajax.models import Products_ajax


class Products_ajaxAdmin(admin.ModelAdmin):
    list_display = ['id', 'product_name', 'image']


admin.site.register(Products_ajax, Products_ajaxAdmin)
