from django.shortcuts import render
from login.models import Login


# Create your views here.
def login(request):
    if request.method == "POST":
        uname = request.POST.get("name")
        passw = request.POST.get("psw")
        obj = Login.objects.filter(username=uname, password=passw)
        tp = ""
        for ob in obj:
            tp = ob.type
            uid = ob.u_id
            if tp == "admin":
                request.session["u_id"] = uid
                return render(request, 'temp/admin.html')
            elif tp == "user":
                request.session["u_id"] = uid
                return render(request, 'temp/user.html')
            elif tp == "staff":
                request.session["u_id"] = uid
                return render(request, 'temp/staff.html')
        objlist = "username or password incorrect....please try again....!"
        context = {
            'msg': objlist,
        }
        return render(request, 'login/login.html', context)
    return render(request, 'login/login.html')


from django.shortcuts import render

# Create your views here.
