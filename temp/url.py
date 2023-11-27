from django.urls import path, include, re_path
from temp import views


urlpatterns=[
    path('index/',views.ind),
    path('admn/', views.adm),
    path('usr/', views.user),
    path('stff/', views.staff)

]