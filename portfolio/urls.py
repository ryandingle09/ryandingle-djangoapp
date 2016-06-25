from django.conf.urls import url
from django.conf.urls.static import static
from django.conf import settings
from portfolio.views import *
from . import views

urlpatterns = [
	url(r'^$', views.index, name='index'),
	url(r'^contact/$', views.mail),
	url(r'^subscribe/$', views.subscribe),
	url(r'^header/$', views.header),
	url(r'^portfolio/project.(?P<pk>[-\w]+).html$', views.portfolio_detail, name='portfolio-detail'),
	url(r'^portfolio/$', views.portfolio_list, name='portfolio-list'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)