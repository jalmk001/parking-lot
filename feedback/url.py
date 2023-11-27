from django.urls import path, include, re_path

from feedback import views


urlpatterns=[
    path('pstfd/',views.postfdbk),
    path('vfd/',views.vwfd)
]