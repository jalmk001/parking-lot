from django.db import models
from booking.models import Booking
# Create your models here.

class Record(models.Model):
    rec_id = models.AutoField(primary_key=True)
    b=models.ForeignKey(Booking,to_field='b_id',on_delete=models.CASCADE)
    # b_id = models.IntegerField()
    entry_time = models.TimeField()
    exit_time = models.CharField(max_length=10)
    # s_id = models.IntegerField()


    class Meta:
        managed = False
        db_table = 'record'

