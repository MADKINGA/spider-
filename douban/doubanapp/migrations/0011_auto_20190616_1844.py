# Generated by Django 2.1.7 on 2019-06-16 10:44

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('doubanapp', '0010_remove_weibodb_ranktop'),
    ]

    operations = [
        migrations.RenameField(
            model_name='weibodb',
            old_name='toh',
            new_name='hot',
        ),
    ]
