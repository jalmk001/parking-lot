from django.db import models

# Create your models here.

class Arrival(models.Model):
    a_id = models.AutoField(primary_key=True)
    u_id = models.IntegerField()
    type = models.CharField(max_length=100)
    entry_time = models.TimeField()
    exit_time = models.TimeField()
    # vehicle_no = models.CharField(max_length=100)
    b_id = models.IntegerField()

    # class Meta:
    #     # managed = False
    #     db_table = 'arrival'


