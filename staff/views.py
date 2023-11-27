from django.shortcuts import render
from staff.models import Staff
from login.models import Login
# Create your views here.


def register(request):
    if request.method=='POST':
        ob=Staff()
        ob.username=request.POST.get('name')
        ob.password=request.POST.get('psw')
        ob.gender=request.POST.get('gn')
        ob.phone=request.POST.get('ph')
        ob.email=request.POST.get('mail')

        ob.save()

        obj=Login()
        obj.username=ob.username
        obj.password=ob.password
        obj.type='staff'
        obj.u_id=ob.staff_id
        obj.save()
    return render(request,'staff/reg.html')