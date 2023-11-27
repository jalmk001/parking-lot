from django.urls import path, include, re_path

from booking import views

urlpatterns=[
    path('pst/(?P<idd>\w+)',views.postbk,name="bk"),
    path('vwbk/',views.viewbk),
    path('payy/(?P<idd>\w+)', views.pay, name="py1"),
    path('mng/', views.mngbk),

]