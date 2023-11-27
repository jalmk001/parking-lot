# Generated by Django 3.2.15 on 2022-11-10 09:29

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Feedback',
            fields=[
                ('f_id', models.AutoField(primary_key=True, serialize=False)),
                ('feedback', models.CharField(max_length=200)),
                ('date', models.DateField()),
                ('time', models.TimeField()),
                ('u_id', models.IntegerField()),
                ('s_id', models.IntegerField()),
            ],
            options={
                'db_table': 'feedback',
                'managed': False,
            },
        ),
    ]
