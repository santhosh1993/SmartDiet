import tensorflow as tf
import numpy as np

dataset= np.loadtxt("/Users/santhosh_nampally/Projects/smartdiet/Backend/TensorFlow/smartDiet.csv", delimiter=",")
trainint_data = dataset[:, [1,2,3,5]]
output_data = dataset[:,[4]]

model = tf.keras.models.Sequential([tf.keras.layers.Dense(4, input_shape=(4,)),
                                    tf.keras.layers.Dense(700, activation=tf.nn.relu),
                                    tf.keras.layers.Dense(700, activation=tf.nn.relu),
                                    tf.keras.layers.Dense(700, activation=tf.nn.relu),
                                    tf.keras.layers.Dense(19, activation=tf.nn.softmax)])

model.compile(optimizer = tf.optimizers.Adam(),
              loss = 'sparse_categorical_crossentropy',
              metrics=['accuracy'])

model.fit(trainint_data, output_data, epochs=4000)
print("*****")
classifications = model.predict([[677, 7.4, 1, 1]])
result = (classifications > 0.5).astype(np.int)
model.save('my_model.h5')
print(np.where(result == 1))