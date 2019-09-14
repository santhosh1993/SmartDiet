from rest_framework.generics import ListAPIView
from rest_framework.views import APIView
from rest_framework.response import Response

from .models import Food
from .serializers import FoodSerializer

import numpy as np
from tensorflow import keras
from rest_framework.status import (
    HTTP_400_BAD_REQUEST,
    HTTP_404_NOT_FOUND,
    HTTP_200_OK
)

class FoodList(ListAPIView):
    queryset = Food.objects.all()
    serializer_class = FoodSerializer

    def get_queryset(self):
        return Food.objects.all()

class SuggestAMealAPIView(APIView):
    def post(self, request, format=None):
        calories = request.data.get('calories')
        sleeptime = request.data.get('sleeptime')
        illness = request.data.get('illness')
        foodtime = request.data.get('foodtime')

        new_model = keras.models.load_model('my_model.h5')
        classifications = new_model.predict([[calories, sleeptime, illness, foodtime]])
        result = (classifications > 0.5).astype(np.int)
        value = np.where(result[0] == 1)[0][0]

        food = Food.objects.filter(food_id=value)

        if food.exists():
            return Response(FoodSerializer(food).data)
        else:
            return Response({"message": "We could not suggest you this time", "status_code": 2002}, HTTP_200_OK)


