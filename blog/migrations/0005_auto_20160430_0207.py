# -*- coding: utf-8 -*-
# Generated by Django 1.9.5 on 2016-04-30 02:07
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0004_auto_20160429_1615'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='category',
            name='slug',
        ),
        migrations.RemoveField(
            model_name='post',
            name='slug',
        ),
    ]
