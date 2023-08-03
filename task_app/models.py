from django.db import models


# Create your models here.
class Districts(models.Model):
    district = models.CharField(max_length=250)

    def __str__(self):
        return self.district


class Branches(models.Model):
    branch = models.CharField(max_length=250)
    district = models.ForeignKey(Districts, on_delete=models.CASCADE)

    def __str__(self):
        return self.branch


class Registration(models.Model):
    branches_list = models.CharField(max_length=100)
    districts_list = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    dob = models.DateField()
    age = models.IntegerField()
    gender = models.CharField(max_length=10)
    email = models.EmailField()
    address = models.TextField()
    account = models.CharField(max_length=20)
    phonenumber = models.CharField(max_length=20)
    materials_req = models.CharField(max_length=200, blank=True, null=True)

    def __str__(self):
        return self.name