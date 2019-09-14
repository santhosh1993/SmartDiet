from django.db import models
import random

class Food(models.Model):
    id = models.AutoField(primary_key=True)
    food_id = models.IntegerField(unique=True)
    name = models.TextField()
    calories = models.TextField()
    description = models.TextField()
    is_veg = models.BooleanField()
    image_url = models.TextField()
    price = models.TextField()
    protein = models.IntegerField()
    fat = models.IntegerField()
    carbs = models.IntegerField()
    fiber = models.IntegerField()


class Illness(models.Model):
    id = models.AutoField(primary_key=True)
    type = models.CharField(max_length=50, unique=True)
    food = models.ManyToManyField(Food)


class TrainingData(models.Model):
    id = models.AutoField(primary_key=True)
    calories = models.IntegerField()
    sleeptime = models.FloatField()
    illness = models.IntegerField()
    food = models.IntegerField()
    foodtime = models.IntegerField()
    is_training = models.BooleanField()