from django.conf.urls import url

from record import views

urlpatterns=[
    url('pst/(?P<idd>\w+)',views.postrc,name="en"),
    url('ret/(?P<idd>\w+)', views.expost,name="ret")

]