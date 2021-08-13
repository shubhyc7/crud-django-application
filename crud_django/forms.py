from django.forms import ModelForm
from .models import Crud_django


class Crud_djangoForm(ModelForm):
    class Meta:
        model = Crud_django
        fields = '__all__'
