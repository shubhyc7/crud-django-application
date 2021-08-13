from django.shortcuts import render, redirect
from .models import Products
from django.contrib import messages
import os


def list(request):
    products = Products.objects.all()
    data = {"products": products}
    return render(request, 'products/list.html', data)


def add(request):
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

        p = Products(product_name=product_name,
                     description=description, image=image, is_active=is_active)
        p.save()
        messages.success(request, "Added Successfully")
        return redirect('list')

    return render(request, 'products/add.html')


def edit(request, id):
    products = Products.objects.get(id=id)
    data = {"products": products}

    if request.method == 'POST':
        is_active = 0
        product_name = request.POST['product_name']
        description = request.POST['description']

        try:
            if request.POST['is_active']:
                is_active = request.POST['is_active']
            else:
                pass
        except KeyError:
            pass

        Products.objects.filter(id=id).update(
            product_name=product_name, description=description, is_active=is_active)
        messages.success(request, "Updated Successfully")
        return redirect('list')
    return render(request, 'products/edit.html', data)


def delete(request, id):
    products = Products.objects.get(id=id)
    if len(products.image) > 0:
        os.remove(products.image.path)
    products.delete()
    messages.success(request, "Deleted Successfully")
    return redirect('list')


def status(request, id):
    products = Products.objects.get(id=id)
    if products.is_active == 1:
        Products.objects.filter(id=id).update(is_active=0)
        messages.success(request, "Deactivated Successfully")
    else:
        Products.objects.filter(id=id).update(is_active=1)
        messages.success(request, "Activated Successfully")
    return redirect('list')
