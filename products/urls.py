from products import views
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.list, name='list'),
    path('add', views.add, name='add'),
    path('edit/<int:id>/', views.edit, name='edit'),
    path('delete/<int:id>/', views.delete, name='delete'),
    path('status/<int:id>/', views.status, name='status'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
