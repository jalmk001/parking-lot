from django.urls import path, include, re_path

from user import views


urlpatterns=[
    path('pst/',views.user)
]