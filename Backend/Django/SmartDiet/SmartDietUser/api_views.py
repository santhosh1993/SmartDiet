from rest_framework.response import Response
from django.views.decorators.csrf import csrf_exempt
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import AllowAny

from rest_framework.status import (
    HTTP_400_BAD_REQUEST,
    HTTP_404_NOT_FOUND,
    HTTP_200_OK
)

from .models import Users
from .serializer import UserSerializer

@csrf_exempt
@api_view(["POST"])
@permission_classes((AllowAny,))
def login(request):
    email_id = request.data.get("email_id")
    password = request.data.get("password")
    user = Users.authenticate_user(email_id, password)

    if user is not None:
        serializer = UserSerializer(user)
        return Response(serializer.data)

    return Response({"message": "Invalid credentials / User Doesn't exists"}, HTTP_400_BAD_REQUEST)

