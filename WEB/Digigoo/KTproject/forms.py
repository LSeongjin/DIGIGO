from django import forms
from .models import UserPicture

class PictureForm(forms.ModelForm):
    class Meta:
        model = UserPicture
        fields = ['UserDrawnPicture', 'Destination_choice']