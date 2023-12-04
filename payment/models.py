from django.db import models
from park.models import Park
from user.models import User
# Create your models here.

PAYMENT_STATUSES = (
    ('pending', 'pending'),
    ('confirmed', 'confirmed')
)
class Payment(models.Model):
    py_id = models.AutoField(primary_key=True)
    s=models.ForeignKey(Park,to_field='s_id',on_delete=models.CASCADE)
    # s_id = models.IntegerField()
    u=models.ForeignKey(User,to_field='u_id',on_delete=models.CASCADE)
    # u_id = models.IntegerField()
    date = models.DateField()
    time = models.TimeField()
    amount = models.CharField(default='200', max_length=100)
    status = models.CharField(default='pending', choices=PAYMENT_STATUSES, max_length=100)


    # class Meta:
    #     # managed = False
    #     db_table = 'payment'


