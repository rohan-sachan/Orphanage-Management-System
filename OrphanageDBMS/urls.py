"""OrphanageDBMS URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
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
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path,include

from OrphanageDBMS import settings
from child_app import views, AdminDBvIews

urlpatterns = [
    path('demo',views.showDemoPage),
    path('admin/', admin.site.urls),
    path('', views.ShowLoginPage),
    path('get_user_details', views.GetUserDetails),
    path('logout_user', views.logout_user,name="logout"),
    path('doLogin',views.doLogin,name="do_login"),
    path('admin_home',AdminDBvIews.admin_home,name="admin_home"),
    path('add_child',AdminDBvIews.add_child,name="add_child"),
    # path('add_child_save',AdminDBvIews.add_child_save,name="add_child_save"),
    path('add_room',AdminDBvIews.add_room,name="add_room"),
    path('add_room_save',AdminDBvIews.add_room_save,name="add_room_save"),
    path('manage_room',AdminDBvIews.manage_room,name="manage_room"),
    path('edit_room/<str:room_id>', AdminDBvIews.edit_room,name="edit_room"),
    path('edit_room_save', AdminDBvIews.edit_room_save,name="edit_room_save"),

]+static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)+static(settings.STATIC_URL,document_root=settings.STATIC_ROOT)
