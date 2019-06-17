from django.db import models

# Create your models here.
class db(models.Model):
    name = models.CharField(max_length=20)
    detail1 = models.CharField(max_length=200,default="")
    detail2 = models.CharField(max_length=200,default="")

class Phonedb(models.Model):
    name = models.CharField(max_length=100)
    price = models.CharField(max_length=100,default="")

class weibodb(models.Model):
    title = models.CharField(max_length=100,default="")
    hot = models.CharField(max_length=100,default="")