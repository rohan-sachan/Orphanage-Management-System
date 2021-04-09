from django.contrib.auth.models import AbstractUser
from django.db import models
from django.db.models.signals import post_save
from django.dispatch import receiver

# Create your models here.
class CustomUser(AbstractUser):
    user_type_data=((1,"DBManager"), (2, "Employee"))
    user_type=models.CharField(default=1,choices=user_type_data,max_length=10)

class AdminDB(models.Model):
    id=models.AutoField(primary_key=True)
    admin=models.OneToOneField(CustomUser,on_delete=models.CASCADE)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    objects=models.Manager()

# class Employees(models.Model):
#     id=models.AutoField(primary_key=True)
#     admin=models.OneToOneField(CustomUser,on_delete=models.CASCADE)
#     address=models.TextField()
#     created_at=models.DateTimeField(auto_now_add=True)
#     updated_at=models.DateTimeField(auto_now_add=True)
#     objects=models.Manager()


@receiver(post_save,sender=CustomUser)
def create_user_profile(sender,instance,created,**kwargs):
    if created:
        if instance.user_type==1:
            AdminDB.objects.create(admin=instance)
        # if instance.user_type==2:
        #     Staffs.objects.create(admin=instance,address="")

@receiver(post_save,sender=CustomUser)
def save_user_profile(sender,instance,**kwargs):
    if instance.user_type==1:
        instance.admindb.save()
    # if instance.user_type==2:
    #     instance.staffs.save()
