from django.shortcuts import render, redirect
from .models import Crud_django_ajax
from django.contrib import messages
from django.http import HttpResponse
from django.http import JsonResponse
import json
from django.core import serializers
from django.core.serializers.json import DjangoJSONEncoder
import os


def list_crud_django_ajax(request):
    result = Crud_django_ajax.objects.all()
    data = {"result": result}
    return render(request, 'crud_django_ajax/list.html', data)


def add_crud_django_ajax(request):
    if request.method == "POST":
        if(request.POST.get('id')):
            result_id = request.POST.get('id')
            result = Crud_django_ajax.objects.get(id=result_id)
            if len(request.FILES) != 0:
                if len(result.image) > 0:
                    os.remove(result.image.path)
                    result.image = request.FILES['image']
            result.name = request.POST.get('name')
            result.description = request.POST.get('description')
            result.is_active = request.POST.get('is_active')
            result.save()
            messages.success(request, "Updated Successfully")
            data = {'result': 1, 'message': "Updated Successfully"}
            return JsonResponse(data)
        else:
            result = Crud_django_ajax()
            result.name = request.POST.get('name')
            result.description = request.POST.get('description')
            result.is_active = request.POST.get('is_active')

            if len(request.FILES) != 0:
                result.image = request.FILES['image']

            result.save()
            messages.success(request, "Added Successfully")
            data = {'result': 1, 'message': "Added Successfully"}
            return JsonResponse(data)
    else:
        data = {'result': 0, 'message': "Error"}
        return JsonResponse(data)


def get_result_crud_django_ajax(request):
    if request.method == 'POST':
        result_id = request.POST['result_id']
        result = Crud_django_ajax.objects.filter(id=result_id)
        data = json.loads(serializers.serialize('json', result))
        return JsonResponse(data, safe=False)


def delete_crud_django_ajax(request, id):
    result = Crud_django_ajax.objects.get(id=id)
    if len(result.image) > 0:
        os.remove(result.image.path)
    result.delete()
    messages.success(request, "Deleted Successfuly")
    return redirect('list_crud_django_ajax')


def status_crud_django_ajax(request, id):
    result = Crud_django_ajax.objects.get(id=id)
    if result.is_active == 1:
        Crud_django_ajax.objects.filter(id=id).update(is_active=0)
        messages.success(request, "Deactivated Successfully")
    else:
        Crud_django_ajax.objects.filter(id=id).update(is_active=1)
        messages.success(request, "Activated Successfully")
    return redirect('list_crud_django_ajax')

