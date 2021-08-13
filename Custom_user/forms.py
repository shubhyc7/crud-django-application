from django.forms import ModelForm, fields
from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User


class CutomUserRegister(UserCreationForm):
  email = forms.CharField(widget=forms.TextInput(attrs={'type': 'email','class': 'form-control', 'placeholder': 'Enter Email'}))
  username  = forms.CharField(widget= forms.TextInput(attrs={'class':'form-control','placeholder':'Enter Username'}))
  password1 = forms.CharField(widget=forms.TextInput(attrs={'type':'password','class': 'form-control', 'placeholder': 'Enter Password'}))
  password2 = forms.CharField(widget=forms.TextInput( attrs={'type': 'password', 'class': 'form-control', 'placeholder': 'Enter Confirm Password'}))

  # def clean_message(self):
  #     email = self.clean_data.get('email', '')
  #     password1 = self.clean_data.get('password1', '')
  #     password2  = self.clean_data.get('password2', '')
  #     try:
  #         User.objects.get(email_address=email)
  #         raise forms.ValidationError("Email taken.")
  #     except User.DoesNotExist:
  #       pass

  #     if password1 != password2:
  #       raise forms.ValidationError("The passwords don't match.")

  class Meta:
    model = User
    fields = ['email','username', 'password1', 'password2']
    
