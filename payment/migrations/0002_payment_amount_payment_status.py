# Generated by Django 5.0 on 2023-12-04 17:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('payment', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='payment',
            name='amount',
            field=models.CharField(default='200', max_length=100),
        ),
        migrations.AddField(
            model_name='payment',
            name='status',
            field=models.CharField(choices=[('pending', 'pending'), ('confirmed', 'confirmed')], default='pending', max_length=100),
        ),
    ]