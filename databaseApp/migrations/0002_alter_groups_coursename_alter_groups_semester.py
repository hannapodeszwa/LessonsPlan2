# Generated by Django 4.1.5 on 2023-01-07 23:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('databaseApp', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='groups',
            name='CourseName',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='groups',
            name='Semester',
            field=models.CharField(max_length=1),
        ),
    ]