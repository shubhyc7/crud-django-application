from crud_django_ajax import views
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.list_crud_django_ajax, name='list_crud_django_ajax'),
    path('add_crud_django_ajax', views.add_crud_django_ajax, name='add_crud_django_ajax'),
    path('get_result_crud_django_ajax', views.get_result_crud_django_ajax, name='get_result_crud_django_ajax'),
    path('delete_crud_django_ajax/<int:id>/', views.delete_crud_django_ajax, name='delete_crud_django_ajax'),
    path('status_crud_django_ajax/<int:id>/', views.status_crud_django_ajax, name='status_crud_django_ajax'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
