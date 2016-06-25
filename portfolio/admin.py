from django.contrib import admin
from django.contrib.admin.widgets import AdminFileWidget
from django.utils.translation import ugettext as _
from django.utils.safestring import mark_safe
from portfolio.models import *

class ProjectAdmin(admin.ModelAdmin):
	list_display = ('title', 'pub_date')
	list_filter = ['pub_date']
	search_fields = ['title', 'description']

class MetaAdmin(admin.ModelAdmin):
	list_display = ('title', 'pub_date')
	list_filter = ['pub_date']
	search_fields = ['title', 'name']

class ProgrammingLanguageAdmin(admin.ModelAdmin):
	list_display = ('name', 'description', 'pub_date')
	list_filter = ['pub_date']
	search_fields = ['name']

class SocialAdmin(admin.ModelAdmin):
	list_display = ('name', 'pub_date')
	list_filter = ['pub_date']
	search_fields = ['name']

class FrontCoverAdmin(admin.ModelAdmin):
	list_display = ('title', 'signature', 'bio', 'pub_date')
	list_filter = ['pub_date']
	search_fields = ['signature', 'title']

class HeaderCoverAdmin(admin.ModelAdmin):
	list_display = ('title', 'pub_date')
	list_filter = ['pub_date']
	search_fields = ['pub_date', 'title']

class SubscriberAdmin(admin.ModelAdmin):
	list_display = ('email', 'pub_date')
	list_filter = ['pub_date', 'email']

class ResumeAdmin(admin.ModelAdmin):
	list_display = ('title', 'pub_date')
	list_filter = ['pub_date', 'title']

class AboutAdmin(admin.ModelAdmin):
	list_display = ('pub_date',)
	list_filter = ['pub_date']

admin.site.register(Project, ProjectAdmin)
admin.site.register(SiteMetaSeo, MetaAdmin)
admin.site.register(ProgrammingLanguge, ProgrammingLanguageAdmin)
admin.site.register(Social, SocialAdmin)
admin.site.register(HeaderCover, HeaderCoverAdmin)
admin.site.register(FrontCover, FrontCoverAdmin)
admin.site.register(Resume, ResumeAdmin)
admin.site.register(About, AboutAdmin)
admin.site.register(Subscriber, SubscriberAdmin)