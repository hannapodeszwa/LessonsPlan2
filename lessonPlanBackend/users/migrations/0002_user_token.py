# Generated by Django 4.1.5 on 2023-01-26 01:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='token',
            field=models.TextField(blank=True),
        ),
    ]
