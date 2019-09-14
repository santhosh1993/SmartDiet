from django.shortcuts import render
from django.http import HttpResponse
from .DummyData import insertFood, insertTrainingData, insertIllnessData

def index(request):
    # insertFood()
    # insertIllnessData()
    #insertTrainingData()
    return HttpResponse("Success")