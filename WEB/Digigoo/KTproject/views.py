from django.shortcuts import render, get_object_or_404
from .forms import PictureForm
from .models import UserPicture
import os
import cv2
import datetime
import numpy as np
from PIL import Image
from django.http import HttpResponseRedirect
from.CNN_Pic_To_Place import Pic_to_place
from.GAN_Drawn_To_Take_Picture import GAN_Drawn_To_Take_Picture
from django.core.files import File as DjangoFile

def pictureNew(request):
    if request.method =='POST':
        form = PictureForm(request.POST)
        if form.is_valid():
            UserPicture = form.save(commit=False)
            UserPicture.UserDrawnPicture = request.FILES['UserDrawnPicture']
            UserPicture.Destination_choice = request.POST['Destination_choice']
            UserPicture.save()
            UserDrawn_array = cv2.imread(str(UserPicture.UserDrawnPicture), cv2.IMREAD_GRAYSCALE)
            convolved_array = cv2.GaussianBlur(UserDrawn_array, (0, 0), 3)
            Bu_Image = Image.fromarray(convolved_array)
            #Bu_Image.save(str(UserPicture.ID)+'Bulred_Image.png', 'PNG')
            # 가우시안 필터 적용
            #print(Bu_Image)
            UserPicture.UserTakenPicture = GAN_Drawn_To_Take_Picture(Bu_Image, UserPicture.Destination_choice)
            #GAN
            DestinationResult = Pic_to_place(UserPicture.UserTakenPicture)
            #CNN

            UserPicture.FirstTravel = DestinationResult[0][0]
            UserPicture.FirstTravelRate = DestinationResult[0][1]
            UserPicture.SecondTravel = DestinationResult[1][0]
            UserPicture.SecondTravelRate = DestinationResult[1][1]
            UserPicture.ThirdTravel = DestinationResult[2][0]
            UserPicture.ThirdTravelRate = DestinationResult[2][1]
            UserPicture.FindDateTime = datetime.datetime.now()
            #지금 장고모델이 업데이트 되지 않는 이슈가 있어서 결과화면 보기가 되지 않습니다
            #이 부분은 시도는 해보겠으나 우회해서 디테일 함수에 결과값을 모두 넘기는 방식으로
            #억지로 구현이 가능하므로 일정을 안배해서 구현할 예정입니다.
            UserPicture.save()

            return DetailView()
    if request.method == 'GET':
        form = PictureForm()
    return render(request, 'KTproject/upload.html', {'form':form})

def DetailView(request):
    return HttpResponseRedirect('/detail/'+str(UserPicture.ID))