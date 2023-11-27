from django.conf.urls import url

from arrival import views

urlpatterns=[
    url('pst/',views.postar)
]