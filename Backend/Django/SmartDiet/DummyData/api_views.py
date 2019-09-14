from rest_framework.generics import ListAPIView

from .models import Food
from .serializers import FoodSerializer

class FoodList(ListAPIView):
    queryset = Food.objects.all()
    serializer_class = FoodSerializer

    def get_queryset(self):
        return Food.objects.all()