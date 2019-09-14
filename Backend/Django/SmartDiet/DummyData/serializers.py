from rest_framework import serializers
from .models import Food

class FoodSerializer(serializers.ModelSerializer):
    class Meta:
        model = Food
        fields = ('food_id', 'name', 'calories', 'description', 'is_veg', 'image_url', 'price', 'protein', 'fat', 'carbs', 'fiber')

