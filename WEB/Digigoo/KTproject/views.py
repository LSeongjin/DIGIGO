from django.shortcuts import render, get_object_or_404
from .forms import PictureForm
import KTproject.models
import os
import cv2
import datetime
import numpy as np
from PIL import Image
from django.http import HttpResponseRedirect
from.CNN_Pic_To_Place import Pic_to_place
from.GAN_Drawn_To_Take_Picture import GAN_Drawn_To_Take_Picture

def init(request):
    return render(request, 'KTproject/init_page.html')

def pictureNew(request):
    if request.method =='POST':
        form = PictureForm(request.POST)
        if form.is_valid():
            UserPicture = form.save(commit=False)
            UserPicture.UserDrawnPicture = request.FILES['UserDrawnPicture']
            UserPicture.Destination_choice = request.POST['Destination_choice']
            UserPicture.save()

            UserDrawn_array = cv2.imread(str(UserPicture.UserDrawnPicture), cv2.IMREAD_COLOR)
            UserDrawn_array = cv2.resize(UserDrawn_array, dsize=(256,256), interpolation=cv2.INTER_CUBIC)
            #convolved_array = cv2.GaussianBlur(UserDrawn_array, (0, 0), 3)
            #Bu_Image = Image.fromarray(convolved_array)
            #Bu_Image.save(str(UserPicture.ID)+'Bulred_Image.png', 'PNG')
            # 가우시안 필터 적용
            #print(Bu_Image)
            UserTakenPicture = GAN_Drawn_To_Take_Picture(UserDrawn_array, UserPicture.Destination_choice,UserPicture.ID)

            #UserTakenPicture = Image.fromarray(UserTakenPicture)
            #UserTakenPicture.save(str(UserPicture.ID)+'GANed_Image.png', 'PNG')
            #이 저장은 잘 돌아가는지 확인차 남기는 용도. 주석처리해도 상관 없음!
            #GAN

            DestinationResult = Pic_to_place(UserPicture.ID)
            #UserTakenPicture = Image.open(str(UserPicture.ID)+'GANed_Image.png', 'PNG')
            #DestinationResult = Pic_to_place(UserTakenPicture)

            #CNN
            #21 .12.31 작동하는 것 확인 경로는 KT프로젝트 안에 모델을 둬야 작동할 수 있다.
            UserPicture.FirstTravel = DestinationResult[0][1]
            UserPicture.FirstTravelRate = DestinationResult[0][0]
            UserPicture.SecondTravel = DestinationResult[1][1]
            UserPicture.SecondTravelRate = DestinationResult[1][0]
            UserPicture.ThirdTravel = DestinationResult[2][1]
            UserPicture.ThirdTravelRate = DestinationResult[2][0]
            UserPicture.FindDateTime = datetime.datetime.now()
            #지금 장고모델이 업데이트 되지 않는 이슈가 있어서 결과화면 보기가 되지 않습니다
            #이 부분은 시도는 해보겠으나 우회해서 디테일 함수에 결과값을 모두 넘기는 방식으로
            #억지로 구현이 가능하므로 일정을 안배해서 구현할 예정입니다.

            # 21.12.30 --> 위의 에러 우회해서 해결했습니다
            UserPicture.save()

            userPicture = get_object_or_404(KTproject.models.UserPicture, ID=UserPicture.ID)
            return render(request, 'KTproject/detail.html', {'userPicture': userPicture})
    if request.method == 'GET':
        form = PictureForm()
    return render(request, 'KTproject/upload.html', {'form':form})

def info(request, ID):
    userPicture = get_object_or_404(KTproject.models.UserPicture, ID=ID)
    desti = userPicture.FirstTravel
    if desti == 'Ocean':
        information = 'KTproject/info_gyongpodae.html'
        return render(request, information)
    if desti == 'Mountain':
        information = 'KTproject/info_jirisan.html'
        return render(request, information)
    if desti == 'Tower':
        information = 'KTproject/info_namsantower.html'
        return render(request, information)
    if desti == 'Plain':
        information = 'KTproject/info_jeju.html'
        return render(request, information)

