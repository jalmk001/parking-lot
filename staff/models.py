from django.db import models

# Create your models here.
class Staff(models.Model):
    staff_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=100)
    password = models.CharField(max_length=100)
    gender = models.CharField(max_length=100)
    phone = models.CharField(max_length=20)
    email = models.CharField(max_length=200)

    # class Meta:
    #     # managed = False
    #     db_table = 'staff'
