"""parking URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.urls import path, include, re_path
from login import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('arrival/',include('arrival.url')),
    path('booking/',include('booking.url')),
    path('feedback/',include('feedback.url')),
    path('login/',include('login.url')),
    path('park/',include('park.url')),
    path('payment/',include('payment.url')),
    path('user/',include('user.url')),
    path('temp/',include('temp.url')),
    path('record/',include('record.url')),
    path('staff/',include('staff.url')),

    path('',views.login)
]
