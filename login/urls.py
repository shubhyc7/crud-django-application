from login import views
from django.urls import path

urlpatterns = [
    path('', views.login, name='login'),
    path('loginAction', views.loginAction, name='loginAction'),
    path('logout', views.logout, name='logout'),
    path('dashboard', views.dashboard, name='dashboard'),
]
