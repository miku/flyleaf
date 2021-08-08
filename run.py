import tensorflow as tf
from tensorflow import keras

image_size = (200, 271)
batch_size = 32

model = keras.models.load_model("models/flyleaf.20210809001333")

img = keras.preprocessing.image.load_img(
    "input.png", target_size=image_size
)
img_array = keras.preprocessing.image.img_to_array(img)
img_array = tf.expand_dims(img_array, 0)  # Create batch axis

predictions = model.predict(img_array)
score = predictions[0]
print(
    "This image is %.2f percent cover and %.2f percent text"
    % (100 * (1 - score), 100 * score)
)


