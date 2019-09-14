from django.db import models

# Create your models here.


class Users(models.Model):
    user_name = models.CharField(max_length=50)
    email_id = models.CharField(max_length=50, unique=True)
    password = models.CharField(max_length=50)

    def __str__(self):
        return f"{self.user_name}"
