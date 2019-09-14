from django.urls import path
from . import views
from . import api_views

urlpatterns = [
    path('insert/', views.index, name="insert data"),
    path('foodlist/', api_views.FoodList.as_view(), name="food list"),
    path('suggestme/', api_views.SuggestAMealAPIView.as_view(), name="suggest food list"),
    path('updateme/', api_views.UpdateAMealAPIView.as_view(), name="update food list")
]