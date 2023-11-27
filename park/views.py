from django.shortcuts import render
from park.models import Park
from django.core.files.storage import FileSystemStorage
# Create your views here.

def postslt(request):
    if request.method=='POST':
        ob=Park()
        # ob.status='available'
        ob.amount=request.POST.get('amnt')
        myfile=request.FILES['slot']
        fs=FileSystemStorage()
        filename=fs.save(myfile.name,myfile)
        ob.slot=myfile.name
        # ob.time=request.POST.get('tym')
        # ob.exit=request.POST.get('etym')
        ob.save()
    return render(request,'park/postsl.html')


def vslot(request):
    obj=Park.objects.all()
    context={
        'objval':obj
    }
    return render(request,'park/view.html',context)




def vavailable(request):
    obj=Park.objects.filter(status='available')
    context={
        'objval':obj
    }
    return render(request,'park/available.html',context)

def manageslot(request):
    obj=Park.objects.filter(status='available')
    context={
        'objval':obj
    }
    return render(request,'park/manage.html',context)

def update(request,idd):
    obj = Park.objects.get(s_id=idd)
    context = {
        'objval': obj
    }
    if request.method=='POST':
        ob=Park.objects.get(s_id=idd)
        ob.status='available'
        ob.amount=request.POST.get('amnt')
        myfile=request.FILES['slot']
        fs=FileSystemStorage()
        filename=fs.save(myfile.name,myfile)
        ob.slot=myfile.name
        # ob.time=request.POST.get('tym')

        ob.save()
    return render(request,'park/update.html',context)