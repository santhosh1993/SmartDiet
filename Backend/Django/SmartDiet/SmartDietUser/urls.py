from django.urls import path
from .api_views import login

urlpatterns = [
   path('login/', login, name='login'),
]