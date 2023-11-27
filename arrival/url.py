from django.urls import path, include, re_path

from arrival import views

urlpatterns=[
    path('pst/',views.postar)
]