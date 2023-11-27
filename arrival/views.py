from django.shortcuts import render
from arrival.models import Arrival
# from booking.models import Booking
# from user.models import User
# Create your views here.

def postar(request):

    if request.method=='POST':
        ob=Arrival()
        ob.u_id=request.POST.get('us')
        ob.b_id=request.POST.get('vh')
        ob.entry_time=request.POST.get('entym')
        ob.exit_time=request.POST.get('extym')
        ob.type=request.POST.get('typ')
        ob.save()
    return render(request,'arrival/arvlpost.html')
        
