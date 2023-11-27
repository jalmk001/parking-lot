from django.shortcuts import render
from user.models import User
from login.models import Login
from django.http import HttpResponseRedirect
# Create your views here.

def user(request):
    if request.method=='POST':
        ob=User()
        ob.username=request.POST.get('name')
        ob.password=request.POST.get('psw')
        ob.gender=request.POST.get('gn')
        ob.phone=request.POST.get('ph')
        ob.email=request.POST.get('mail')
        ob.address=request.POST.get('adrs')
        ob.save()

        obj=Login()
        obj.username=ob.username
        obj.password=ob.password
        obj.type='user'
        obj.u_id=ob.u_id
        obj.save()
        return HttpResponseRedirect('/login/log/')
    return render(request,'user/user.html')

