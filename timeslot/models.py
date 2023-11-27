from django.db import models

# Create your models here.
class Timeslot(models.Model):
    tm_id = models.AutoField(primary_key=True)
    time = models.CharField(max_length=250)
    status = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'timeslot'
