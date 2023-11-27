from django.urls import path, include, re_path

from login import views

urlpatterns=[
    path('log/',views.login)
]