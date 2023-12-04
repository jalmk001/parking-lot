from django.shortcuts import render, redirect
from payment.models import Payment

# Create your views here.
import datetime
def pay(request,idd):
    ss= request.session["u_id"]
    payment = Payment.objects.get(py_id=idd, u_id=ss)
    payment.status = "confirmed"
    payment.save()
    return redirect(vpay)

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