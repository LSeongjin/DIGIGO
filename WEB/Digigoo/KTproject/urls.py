from django.urls import path,include
from KTproject.views import pictureNew
from .models import UserPicture
from django.views.generic.detail import DetailView


urlpatterns = [
    path('', pictureNew, name = 'pictureNew'),
    path('detail/<int:pk>/', DetailView.as_view(model = UserPicture,template_name='KTproject/detail.html'), name='DestinationDetail')
]