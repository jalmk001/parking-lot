from django.shortcuts import render, redirect
from payment.models import Payment

# Create your views here.

def pay(request,idd):
    ss= request.session["u_id"]
    payment = Payment.objects.get(py_id=idd, u_id=ss)
    payment.status = "confirmed"
    payment.save()
    request.session[f"{ss}-payment"] = "paid"
    return redirect(vpay)

def vpay(request):
    ss= request.session["u_id"]

    obj=Payment.objects.filter(u_id=ss)

    paid = None
    if f"{ss}-payment" in request.session:
        paid = request.session[f"{ss}-payment"]
        del request.session[f"{ss}-payment"]

    context={
        'objaval':obj,
        'paid': paid
    }
    return render(request,'payment/vpay.html',context)


def vad(request):
    obj=Payment.objects.all()
    context={
        'objaval':obj
    }
    return render(request,'payment/viewadmin.html',context)