from django.conf.urls import url

from payment import views


urlpatterns=[
    url('pstpay/(?P<idd>\w+)',views.pay,name="py"),
    url('vpy/',views.vpay),
    url('vwad/', views.vad)

]