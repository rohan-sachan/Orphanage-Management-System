# Generated by Django 3.1.7 on 2021-04-20 06:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('child_app', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='medical_history',
            name='cid',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='child_app.child'),
        ),
    ]
