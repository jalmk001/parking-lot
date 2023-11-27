from django.conf.urls import url

from booking import views

urlpatterns=[
    url('pst/(?P<idd>\w+)',views.postbk,name="bk"),
    url('vwbk/',views.viewbk),
    url('payy/(?P<idd>\w+)', views.pay, name="py1"),
    url('mng/', views.mngbk),

]