# -*- coding: utf-8 -*-
# Generated by Django 1.9.5 on 2016-05-08 01:37
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0026_auto_20160507_0308'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='image_cover',
            field=models.ImageField(null=True, upload_to='blog'),
        ),
        migrations.AddField(
            model_name='tag',
            name='image_cover',
            field=models.ImageField(null=True, upload_to='blog'),
        ),
    ]