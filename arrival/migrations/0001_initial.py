# Generated by Django 5.0 on 2023-12-04 16:48

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Arrival',
            fields=[
                ('a_id', models.AutoField(primary_key=True, serialize=False)),
                ('u_id', models.IntegerField()),
                ('type', models.CharField(max_length=100)),
                ('entry_time', models.TimeField()),
                ('exit_time', models.TimeField()),
                ('b_id', models.IntegerField()),
            ],
        ),
    ]
