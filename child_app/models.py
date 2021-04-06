# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Room(models.Model):
    roomid = models.CharField(db_column='RoomID', primary_key=True, max_length=5)  # Field name made lowercase.
    floor = models.IntegerField(db_column='Floor')  # Field name made lowercase.
    max_occupancy = models.IntegerField(db_column='Max_Occupancy')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Room'
