from django.shortcuts import render
from payment.models import Payment

# Create your views here.
import datetime
def pay(request,idd):
    ss= request.session["u_id"]
    # if request.method=='POST':
    ob=Payment()
    ob.u_id=ss
    ob.s_id=idd
        # ob.amount=request.POST.get('amount')
    ob.date=datetime.datetime.today()
    ob.time=datetime.datetime.now()
    ob.save()
    return render(request,'payment/post.html')

def vpay(request):
    ss= request.session["u_id"]

    obj=Payment.objects.filter(u_id=ss)
    context={
        'objaval':obj
    }
    return render(request,'payment/vpay.html',context)


def vad(request):
    obj=Payment.objects.all()
    context={
        'objaval':obj
    }
    return render(request,'payment/viewadmin.html',context)