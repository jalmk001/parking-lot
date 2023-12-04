from django.urls import path, include, re_path

from payment import views


urlpatterns=[
    path('pstpay/<int:idd>',views.pay,name="py"),
    path('vpy/',views.vpay),
    path('vwad/', views.vad)

]