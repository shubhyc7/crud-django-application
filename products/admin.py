# from django.contrib import admin
# from products.models import Products

# # Register your models here.
# # admin.site.register(Products)


# class Productscol(Products.ModelAdmin):
#     # a list of displayed columns name.
#     list_display = ['id', 'productname']

from django.contrib import admin
from products.models import Products


class ProductsAdmin(admin.ModelAdmin):
    list_display = ['id', 'product_name', 'image']


admin.site.register(Products, ProductsAdmin)
