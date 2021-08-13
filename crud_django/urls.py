from crud_django import views
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.list_crud_django, name='list_crud_django'),
    path('add_crud_django', views.add_crud_django, name='add_crud_django'),
    path('edit_crud_django/<int:id>/', views.edit_crud_django, name='edit_crud_django'),
    path('delete_crud_django/<int:id>/', views.delete_crud_django, name='delete_crud_django'),
    path('status_crud_django/<int:id>/', views.status_crud_django, name='status_crud_django'),
] 

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
