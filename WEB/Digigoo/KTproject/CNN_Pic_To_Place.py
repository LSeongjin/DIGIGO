import tensorflow as tf
import numpy as np
import cv2

def Pic_to_place(ID):

    label = {0: "Mountain", 1: "Ocean", 2: "Tower", 3: "Plain"}
    label_num = 4

    cnn_model = tf.keras.models.load_model("cnnmodel_211230")
    #image_file = ID+'GANed_Image.png'
    image_file = "image/"+str(ID)+"GANed_Image.png"
    img = np.array(np.array([cv2.resize(cv2.imread(image_file, cv2.IMREAD_COLOR), dsize=(256, 256),
                                        interpolation=cv2.INTER_LINEAR).astype(np.float64)])) / (256.0)
    result = np.array(cnn_model(img))

    probability = []
    for i in range(label_num):
        probability.append([str(round(100 * result[0][i], 2)), label[i]])
        #print(label[i], str(round(100 * result[0][i], 2)))
        probability.sort(reverse=True)
    return probability