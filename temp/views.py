from django.shortcuts import render
from login.models import Login

# Create your views here.
def ind(request):
    return render(request,'temp/index.html')



def adm(request):
    return render(request,'temp/admin.html')


def user(request):

    return render(request,'temp/user.html')

def staff(request):
    return render(request,'temp/staff.html')