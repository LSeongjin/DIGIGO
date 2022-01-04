from django.urls import path,include
from KTproject.views import pictureNew,info,init
from .models import UserPicture
from django.views.generic.detail import DetailView


urlpatterns = [
    path('',init, name="init"),
    path('pictureNew', pictureNew, name="pictureNew"),
    path('info/<int:ID>', info, name='info'),
]