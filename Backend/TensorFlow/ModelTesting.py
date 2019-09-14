import tensorflow as tf
import numpy as np
from tensorflow import keras

new_model = keras.models.load_model('my_model.h5')
classifications = new_model.predict([[1700, 7.4, 3, 3]])
result = (classifications > 0.5).astype(np.int)
value = np.where(result[0]==1)[0][0]
print(value)