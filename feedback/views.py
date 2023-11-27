from django.shortcuts import render
from feedback.models import Feedback
from park.models import Park
# Create your views here.
import datetime

def postfdbk(request):
    obj = Park.objects.all()
    context = {
        'objval': obj
    }
    ss= request.session["u_id"]

    if request.method=='POST':
        ob=Feedback()
        ob.u_id=ss
        # ob.s_id=request.POST.get('s1')
        ob.feedback=request.POST.get('fd')
        ob.date=datetime.date.today()
        ob.time=datetime.datetime.now()
        ob.save()
    return render(request,'feedback/post.html',context)


def vwfd(request):
    obj=Feedback.objects.all()
    context={
        'objval':obj
    }
    return render(request,'feedback/view.html',context)
