from django.conf.urls import url

from park import views


urlpatterns=[
    url('pstsl/',views.postslt),
    url('vsl/',views.vslot),
    url('vwav/', views.vavailable),
    url('mng/', views.manageslot),
    url('updt/(?P<idd>\w+)',views.update,name="sup")

]