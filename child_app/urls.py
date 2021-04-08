from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path,include

from OrphanageDBMS import settings
from . import views

urlpatterns = [
    path('',views.showDemoPage),
]+static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)+static(settings.STATIC_URL,document_root=settings.STATIC_ROOT)