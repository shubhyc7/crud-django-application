from products_ajax import views
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.list_ajax, name='list_ajax'),
    path('add_ajax', views.add_ajax, name='add_ajax'),
    path('get_result_ajax', views.get_result_ajax, name='get_result_ajax'),
    path('delete_ajax/<int:id>/', views.delete_ajax, name='delete_ajax'),
    path('status_ajax/<int:id>/', views.status_ajax, name='status_ajax'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
