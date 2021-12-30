from django.contrib import admin
from .models import UserPicture
# Register your models here.
class PicAdmin(admin.ModelAdmin):
    list_display = ['ID', 'FirstTravel','FirstTravelRate']

admin.site.register(UserPicture, PicAdmin)