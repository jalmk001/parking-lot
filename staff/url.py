from django.urls import path, include, re_path

from staff import views


urlpatterns=[
    path('pststf/',views.register)
]