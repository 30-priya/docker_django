from django.urls import path

from doc import views
from doc.controllers.storedata import storedata

urlpatterns = [
    path("", views.index, name="index"),
    path("storedata", storedata, name="storedata"),
]
