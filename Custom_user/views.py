from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth.forms import UserCreationForm
from .forms import CutomUserRegister
from django.contrib.auth import authenticate, logout, login

def userRegistration(request):
    if request.user.is_authenticated:
      messages.success(request, "You ara aleredy Logged In")
      return redirect('/admin')
    else:  
      form = CutomUserRegister()
      if request.method == 'POST':
          form = UserCreationForm(request.POST)
          print(request.POST)
          if form.is_valid():
              form.save()
              messages.success(request, "Registation Successfully")
              return redirect('/')
          else:
            messages.error(request, 'The form is invalid.')
            return redirect('/userRegistration')
      data = {'form': form}
      return render(request, 'user_register.html', data)


def userloginAction(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request,username=username, password=password)
        if user is not None:
           login(request,user)
           messages.success(request, "Login Successfully")
           return redirect('/admin')
        else:
            messages.success(request, "Incorrect Username Password")
            return redirect('/')
    else:
        messages.success(request, "Please Enter Username Password")
        return redirect('/')
