from django.shortcuts import render
from booking.models import Booking
from park.models import Park
import datetime
from payment.models import Payment
# import datetime
# Create your views here.


def chekavail(btime1,btime2,ctime1,ctime2, booked_date):

    dt_string = "2020-12-18 "+btime1
    format = "%Y-%m-%d %H:%M"
    btime1 = datetime.datetime.strptime(dt_string, format)
    btime1=btime1.time()

    dt_string = "2020-12-18 " + btime2
    btime2 = datetime.datetime.strptime(dt_string, format)
    btime2 = btime2.time()

    status="ok"

    if (ctime1<btime1<ctime2 or ctime1<btime2<ctime2) and booked_date == datetime.date.today() :
        status="exist"
    elif btime1 == ctime1 and btime2 == ctime2:
        status= "exist"
    return status

def postbk(request,idd):
    ss= request.session["u_id"]

    context={
        'av':"ok",
    }
    if request.method=='POST':
        ob=Booking()
        ob.u_id=ss
        ob.entry_time=request.POST.get('entym')
        ob.exit_time=request.POST.get('extym')
        ob.s_id=idd
        ob.date=datetime.date.today()
        ob.vehicle_no=request.POST.get('veh')
        ob.vehicle_type=request.POST.get('tp')
        ob.status='pending'
        ob.timestatus='pending'

        book=Booking.objects.filter(s_id=idd, date=ob.date,status='pending')
        stat="ok"
        if len(book)>0:

            for bo in book:
                stat=chekavail(ob.entry_time,ob.exit_time,bo.entry_time,bo.exit_time, bo.date)
                if stat=='exist':
                    break
        if stat=="ok":
            ob.save()
            slot = Park.objects.get(s_id=idd)
            Payment.objects.create(
                s_id = idd,
                u_id = ss,
                amount= slot.amount,
                date= datetime.datetime.now(),
                entry_time = ob.entry_time,
                exit_time = ob.exit_time
            )
            context = {
                'av': "booked",
            }
        else:
            context = {
                'av': "exist",
            }
        obj=Park.objects.get(s_id=idd)
        obj.status='unavailable'
        obj.save()

    return render(request,'booking/booking.html',context)


def viewbk(request):
    ss= request.session["u_id"]
    ob=Booking.objects.filter(u_id=ss,status='pending')
    context={
        'objval':ob
    }
    return render(request,'booking/viewbk.html',context)


def pay(request,idd):
    ss= request.session["u_id"]
    # if request.method=='POST':
    ob=Payment()
    ob.u_id=ss
    ob.s_id=idd
    ob.amount=request.POST.get('amount')
    ob.date=datetime.datetime.today()
    ob.time=datetime.datetime.now()
    ob.status="pending"
    ob.save()
    return viewbk(request)

def mngbk(request):
    # ss= request.session["u_id"]
    ob=Booking.objects.filter(status='pending')
    context={
        'objval':ob
    }
    return render(request,'booking/manage.html',context)


