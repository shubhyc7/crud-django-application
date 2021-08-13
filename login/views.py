from django.shortcuts import render, redirect
from .models import Customer
from django.contrib import messages

def login(request):
    try:
        if(request.session['is_log'] == 1):
            return redirect('dashboard')
        else:
            pass
    except KeyError:
        pass
    return render(request, 'login.html')


def loginAction(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        if username and password:
            try:
                result = Customer.objects.get(
                    username=username, password=password)
                if result:
                    if result.id:
                        request.session['is_log'] = 1
                        request.session['user_id'] = result.id
                        request.session['username'] = result.username
                        messages.success(request, "Login Successfully")
                        return redirect('dashboard')
                    else:
                        messages.success(request, "User Not Found")
                else:
                    messages.success(request, "Incorrect Username Password")
            except Customer.DoesNotExist:
                messages.success(request, "Username & Password Not Match")
        else:
            messages.success(request, "Please Enter Username Password")

    return render(request, 'login.html')


def dashboard(request):
   
    try:
        if(request.session['is_log'] == 1):
            result = Customer.objects.get(id=request.session['user_id'])
            if request.method == "POST":
                password = request.POST.get('password')
                confirm_password = request.POST.get('confirm_password')
                if(password == confirm_password):
                    result.username = request.POST.get('username')
                    result.password = request.POST.get('password')
                    result.save()
                    messages.success(request, "Updated Successfully")
                    return redirect('dashboard')
                else:  
                  messages.success(request, "Password Not Match")
                  return redirect('dashboard')
            data = {'result': result}
            return render(request, 'dashboard.html', data)
        else:
            return redirect('login')
    except KeyError:
        return redirect('login')

def logout(request):
    try:
        del request.session['is_log']
        del request.session['user_id']
        del request.session['username']
    except KeyError:
        pass
    return render(request, 'login.html')

