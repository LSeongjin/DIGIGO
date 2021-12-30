from django.db import models
import re
# Create your models here.

class UserPicture(models.Model):
    Destination = [
        ('MT', 'Mountain'),
        ('OC', 'Ocean'),
        ('LM', 'LandMark'),
        ('PL', 'Plain'),
    ]
    ID = models.AutoField(auto_created=True, primary_key=True, serialize=False)
    contents = models.TextField(blank=True, null=True)
    UserDrawnPicture = models.ImageField(blank=True, upload_to="image/", null=True)
    #사람이 그려서 업로드하는 첫번째 이미지
    UserTakenPicture = models.ImageField(blank=True, upload_to="taken/", null=True)
    #기계가 처리해준 그림 => 사진 이미지
    FirstTravel = models.CharField(blank=True, max_length=200)#첫번째 추천 여행지
    FirstTravelRate = models.CharField(blank=True, max_length=200)#첫번째 추천 여행지 확률
    SecondTravel = models.CharField(blank=True,max_length=200)#두번째 추천 여행지
    SecondTravelRate = models.CharField(blank=True,max_length=200)#두번째 추천 여행지 확률
    ThirdTravel = models.CharField(blank=True, max_length=200)#세번째 추천 여행지
    ThirdTravelRate = models.CharField(blank=True, max_length=200)#세번째 추천 여행지 확률
    FindDateTime = models.DateTimeField(auto_now=True)

    Destination_choice = models.CharField(max_length=2, choices=Destination)

    def __str__(self):
        return str(self.ID)

    class Meta:
        ordering = ['-FindDateTime']





