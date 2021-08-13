from django.shortcuts import render, redirect
from .models import Crud_django
from django.contrib import messages
import os


def list_crud_django(request):
    result = Crud_django.objects.all()
    data = {'result': result}
    return render(request, 'crud_django/list.html', data)
   
def add_crud_django(request):
    if request.method == "POST":
        crud_django = Crud_django()
        crud_django.name = request.POST.get('name')
        crud_django.description = request.POST.get('description')
        crud_django.is_active = request.POST.get('is_active')

        if len(request.FILES) != 0:
            crud_django.image = request.FILES['image']

        crud_django.save()
        messages.success(request, "Added Successfully")
        return redirect('list_crud_django')
    return render(request, 'crud_django/add.html')
    

def edit_crud_django(request, id):
    result = Crud_django.objects.get(id=id)

    if request.method == "POST":
        if len(request.FILES) != 0:
            if len(result.image) > 0:
                os.remove(result.image.path)
            result.image = request.FILES['image']
        result.name = request.POST.get('name')
        result.description = request.POST.get('description')
        result.is_active = request.POST.get('is_active')
        result.save()
        messages.success(request, "Updated Successfully")
        return redirect('list_crud_django')

    data = {'result': result}
    return render(request, 'crud_django/edit.html', data)
 
 
def delete_crud_django(request, id):
    result = Crud_django.objects.get(id=id)
    if len(result.image) > 0:
        os.remove(result.image.path)
    result.delete()
    messages.success(request, "Deleted Successfuly")
    return redirect('list_crud_django')
   
def status_crud_django(request, id):
    result = Crud_django.objects.get(id=id)
    if result.is_active == 1:
        Crud_django.objects.filter(id=id).update(is_active=0)
        messages.success(request, "Deactivated Successfully")
    else:
        Crud_django.objects.filter(id=id).update(is_active=1)
        messages.success(request, "Activated Successfully")
    return redirect('list_crud_django')
