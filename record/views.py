from django.shortcuts import render
from record.models import Record
from park.models import Park
from booking.models import Booking
from park.models import Park
from django.http import HttpResponseRedirect
# Create your views here.

def postrc(request,idd):
    bb=Booking.objects.filter(b_id=idd)
    sl=Park.objects.all()
    context={
        'objval':bb,
        'objval1':sl
    }
    if request.method=='POST':
        obj=Record()
        obj.b_id=idd
        obj.entry_time=request.POST.get('etym')
        # obj.exit_time=request.POST.get('xtym')
        obj.exit_time='pending'
        # obj.s_id=request.POST.get('sll')
        obj.save()

        # ob=Park.objects.get(s_id=obj.b.s_id)
        # ob.status='available'
        # ob.save()

        # obb=Booking.objects.get(b_id=obj.b_id)
        # obb.status='returned'
        # obb.save()
        return HttpResponseRedirect('/booking/mng/')

    return render(request,'record/post.html',context)
from django.http import HttpResponse
def expost(request,idd):
    # return HttpResponse('hello')
    if request.method=='POST':
        ob=Record.objects.get(b_id=idd)
        ob.exit_time=request.POST.get('xtym')
        ob.save()

        # ob=Park.objects.get(s_id=obj.b.s_id)
        # ob.status='available'
        # ob.save()
        obb = Booking.objects.get(b_id=ob.b_id)
        obb.status = 'returned'
        obb.save()

        return HttpResponseRedirect('/booking/mng/')
    return render(request,'record/exit.html')
