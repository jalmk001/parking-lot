from django.db import models

# Create your models here.


class Park(models.Model):
    s_id = models.AutoField(primary_key=True)
    slot = models.CharField(max_length=300)
    # status = models.CharField(max_length=100)
    amount = models.CharField(max_length=100)
    # time = models.TimeField()
    # exit = models.TimeField()



    # class Meta:
    #     # managed = False
    #     db_table = 'park'

