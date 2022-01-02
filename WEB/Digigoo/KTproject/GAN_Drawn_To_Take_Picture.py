import tensorflow as tf
import numpy as np
def GAN_Drawn_To_Take_Picture(IMG, choice, ID):
    # IMG : np.array(256, 256, 3)

    # Data preprocessing

    IMG = tf.cast(IMG, tf.float32)
    IMG = tf.stack([IMG], axis=0)
    IMG = (IMG / 127.5) - 1

    if choice == "OC":
        model_sea = tf.keras.models.load_model("GAN_sea_Model_epoch_v1_100.h5")
        prediction = model_sea(IMG, training=True)
        tf.keras.utils.save_img("image/"+str(ID) + "GANed_Image.png", np.array(prediction[0]), data_format="channels_last",
                                file_format=None, scale=True)  # save image at output_folder for web
        return np.array(prediction[0]*0.5 +0.5)  # np.array(255, 255, 3)

    if choice == "LM":
        model_tower = tf.keras.models.load_model("GAN_Tower_Model_epoch_v2_150.h5")
        prediction = model_tower(IMG, training=True)
        tf.keras.utils.save_img("image/"+str(ID) + "GANed_Image.png", np.array(prediction[0]), data_format="channels_last",
                                file_format=None, scale=True)  # save image at output_folder for web
        return np.array(prediction[0]*0.5 +0.5)

    if choice == "MT":
        model_mountain = tf.keras.models.load_model("GAN_Mountain_Model_epoch_v1_150.h5")
        prediction = model_mountain(IMG, training=True)
        tf.keras.utils.save_img("image/"+str(ID) + "GANed_Image.png", np.array(prediction[0]), data_format="channels_last",
                                file_format=None, scale=True)  # save image at output_folder for web
        return np.array(prediction[0]*0.5 +0.5)

    if choice == "PL":
        model_flame = tf.keras.models.load_model("GAN_Flame_Model_epoch210.h5")
        prediction = model_flame(IMG, training=True)
        tf.keras.utils.save_img("image/"+str(ID) + "GANed_Image.png", np.array(prediction[0]), data_format="channels_last",
                                file_format=None, scale=True)  # save image at output_folder for web
        return np.array(prediction[0]*0.5 +0.5)

    else:
        print("error : " + choice)

        return IMG

    tf.keras.utils.save_img( str(ID)+"GANed_Image.png", np.array(prediction[0]), data_format="channels_last",
                            file_format=None, scale=True)  # save image at output_folder for web
