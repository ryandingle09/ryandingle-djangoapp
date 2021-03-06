# -*- coding: utf-8 -*-
# Generated by Django 1.9.5 on 2016-04-21 16:09
from __future__ import unicode_literals

import django.core.files.storage
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='project',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255)),
                ('description', models.TextField(verbose_name='project description')),
                ('website', models.URLField(verbose_name='project url')),
                ('image', models.ImageField(storage=django.core.files.storage.FileSystemStorage(location='/media/photos'), upload_to='')),
                ('status', models.CharField(choices=[('0', 'Production'), ('1', 'Development')], default='0', max_length=20)),
                ('pub_date', models.DateTimeField(verbose_name='date published')),
            ],
        ),
    ]
