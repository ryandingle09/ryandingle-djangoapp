# -*- coding: utf-8 -*-
# Generated by Django 1.9.5 on 2016-04-24 10:07
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0008_auto_20160424_0953'),
    ]

    operations = [
        migrations.AddField(
            model_name='frontcover',
            name='title',
            field=models.CharField(max_length=255, null='true'),
        ),
        migrations.AddField(
            model_name='headercover',
            name='title',
            field=models.CharField(max_length=255, null='true'),
        ),
    ]