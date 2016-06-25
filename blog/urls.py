
from django.conf.urls import url
from django.conf.urls.static import static
from django.conf import settings
from blog.views import index, post_detail, category_detail, Tag
from . import views
from blog.models import Post

urlpatterns = [
	url(r'^$', views.index, name='index'),
	url(r'^post/(?P<year>\d{4})/(?P<month>\d{1,2})/(?P<day>\d{1,2})/(?P<slug>[-\w]+)/$', views.post_detail, name='post-detail'),
	url(r'^category/(?P<slug>[-\w]+)/$', views.category_detail, name='category-detail'),
	url(r'^tag/(?P<slug>[-\w]+)/$', views.tag_detail, name='tag-detail'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)