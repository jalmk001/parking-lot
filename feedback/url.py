from django.conf.urls import url

from feedback import views


urlpatterns=[
    url('pstfd/',views.postfdbk),
    url('vfd/',views.vwfd)
]