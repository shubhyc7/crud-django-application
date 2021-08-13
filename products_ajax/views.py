from django.shortcuts import render, redirect
from .models import Products_ajax
from django.contrib import messages
from django.http import HttpResponse
from django.http import JsonResponse
import json
from django.core import serializers
from django.core.serializers.json import DjangoJSONEncoder
import os


def list_ajax(request):
    products_ajax = Products_ajax.objects.all()
    data = {"products_ajax": products_ajax}
    return render(request, 'products_ajax/list_ajax.html', data)


def add_ajax(request):
    if request.method == 'POST':
        is_active = 0
        image = ''
        product_name = request.POST['product_name']
        description = request.POST['description']

        try:
            if request.FILES['image']:
                image = request.FILES['image']
            else:
                pass
        except KeyError:
            pass

        try:
            if request.POST['is_active']:
                is_active = request.POST['is_active']
            else:
                pass
        except KeyError:
            pass

        if request.POST['id']:
            id = request.POST['id']
            Products_ajax.objects.filter(id=id).update(
                product_name=product_name, description=description, is_active=is_active)
            messages.success(request, "Updated Successfully")
            data = {'result': 1, 'message': "Updated Successfully"}
            return JsonResponse(data)

        else:
            p = Products_ajax(product_name=product_name,
                              description=description, image=image, is_active=is_active)
            p.save()
            messages.success(request, "Added Successfully")
            data = {'result': 1, 'message': "Added Successfully"}
            return JsonResponse(data)

    data = {'result': 0, 'message': "Error"}
    return JsonResponse(data)


def get_result_ajax(request):
    if request.method == 'POST':
        result_id = request.POST['result_id']
        products_ajax = Products_ajax.objects.filter(id=result_id)
        permission_serialize = json.loads(
            serializers.serialize('json', products_ajax))
        return JsonResponse(permission_serialize, safe=False)


def delete_ajax(request, id):
    products_ajax = Products_ajax.objects.get(id=id)
    if len(products_ajax.image) > 0:
        os.remove(products_ajax.image.path)
    products_ajax.delete()
    messages.success(request, "Deleted Successfully")
    return redirect('list_ajax')


def status_ajax(request, id):
    products = Products_ajax.objects.get(id=id)
    if products.is_active == 1:
        Products_ajax.objects.filter(id=id).update(is_active=0)
        messages.success(request, "Deactivated Successfully")
    else:
        Products_ajax.objects.filter(id=id).update(is_active=1)
        messages.success(request, "Activated Successfully")
    return redirect('list_ajax')
