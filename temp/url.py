from django.conf.urls import url
from temp import views


urlpatterns=[
    url('index/',views.ind),
    url('admn/', views.adm),
    url('usr/', views.user),
    url('stff/', views.staff)

]