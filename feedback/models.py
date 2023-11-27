from django.db import models
from user.models import User
# Create your models here.


class Feedback(models.Model):
    f_id = models.AutoField(primary_key=True)
    feedback = models.CharField(max_length=200)
    date = models.DateField()
    time = models.TimeField()
    u=models.ForeignKey(User,to_field='u_id',on_delete=models.CASCADE)
    # u_id = models.IntegerField()
    # s_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'feedback'

