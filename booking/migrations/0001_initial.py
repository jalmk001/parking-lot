# Generated by Django 5.0 on 2023-12-04 16:48

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('park', '0001_initial'),
        ('user', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Booking',
            fields=[
                ('b_id', models.AutoField(primary_key=True, serialize=False)),
                ('entry_time', models.TimeField()),
                ('exit_time', models.TimeField()),
                ('date', models.DateField()),
                ('vehicle_no', models.CharField(max_length=50)),
                ('vehicle_type', models.CharField(max_length=50)),
                ('status', models.CharField(max_length=122)),
                ('s', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='park.park')),
                ('u', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='user.user')),
            ],
        ),
    ]
