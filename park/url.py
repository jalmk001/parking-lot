from django.urls import path, include, re_path

from park import views


urlpatterns=[
    path('pstsl/',views.postslt),
    path('vsl/',views.vslot),
    path('vwav/', views.vavailable),
    path('mng/', views.manageslot),
    path('updt/(?P<idd>\w+)',views.update,name="sup")

]