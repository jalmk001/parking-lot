from django.db import models
from user.models import User
from park.models import Park
# Create your models here.


class Booking(models.Model):
    b_id = models.AutoField(primary_key=True)
    u=models.ForeignKey(User,to_field='u_id',on_delete=models.CASCADE)
    # u_id = models.IntegerField()
    s=models.ForeignKey(Park,to_field='s_id',on_delete=models.CASCADE)

    # s_id = models.IntegerField()
    entry_time = models.TimeField()
    exit_time = models.TimeField()
    date = models.DateField()
    vehicle_no = models.CharField(max_length=50)
    vehicle_type = models.CharField(max_length=50)
    status = models.CharField(max_length=122)



    class Meta:
        managed = False
        db_table = 'booking'



