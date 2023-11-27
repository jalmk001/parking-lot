from django.urls import path, include, re_path

from record import views

urlpatterns=[
    path('pst/(?P<idd>\w+)',views.postrc,name="en"),
    path('ret/(?P<idd>\w+)', views.expost,name="ret")

]