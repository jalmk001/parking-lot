from django.db import models

# Create your models here.

class User(models.Model):
    u_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=100)
    password = models.CharField(max_length=100)
    gender = models.CharField(max_length=200)
    address = models.CharField(max_length=200)
    phone = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    # vehicle_no = models.CharField(max_length=100)
    # type = models.CharField(max_length=100)

    # class Meta:
    #     # managed = False
    #     db_table = 'user'
