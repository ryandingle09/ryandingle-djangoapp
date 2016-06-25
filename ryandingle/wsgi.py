"""
WSGI config for ryandingle project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.9/howto/deployment/wsgi/
"""

#FOR LOCAL USE
import os
from django.core.wsgi import get_wsgi_application
from whitenoise.django import DjangoWhiteNoise
from django.core.wsgi import get_wsgi_application


"""FOR LOCAL USE"""
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "ryandingle.settings")
application = get_wsgi_application()


"""
FOR PRODUCCTION USE
	application = get_wsgi_application()
	application = DjangoWhiteNoise(application)
"""