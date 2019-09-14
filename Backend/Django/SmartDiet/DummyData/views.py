from django.shortcuts import render
from django.http import HttpResponse
from .DummyData import insertFood

def index(request):
    insertFood()
    return HttpResponse("Success")