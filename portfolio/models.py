from django.db import models
from django.utils import timezone
from django.core.exceptions import ValidationError
from ckeditor.fields import RichTextField

# this function is to set limit or insertion
def validate_only_one_instance(obj):
    model = obj.__class__
    if (model.objects.count() > 0 and
            obj.id != model.objects.get().id):
        raise ValidationError("Can only create 1 %s item" % model.__name__)

class Project(models.Model):
    status_choice = (
        ('0', 'Production'),
        ('1', 'Development')
    )

    title = models.CharField(max_length=255)
    description = models.TextField('project description')
    website = models.URLField('project url')
    image = models.ImageField(upload_to='projects')
    status = models.CharField(max_length=20,choices=status_choice, default='0')
    pub_date = models.DateTimeField(auto_now_add=True, auto_now=False)

    def get_absolute_url(self):
        return "/portfolio/project.%s.html" %  self.pk

class SiteMetaSeo(models.Model):
    title = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    description = models.TextField('Website Meta Description')
    image = models.ImageField(upload_to='images', null=True)
    pub_date = models.DateTimeField(auto_now_add=True, auto_now=False)

    def clean(self):
        validate_only_one_instance(self)

class ProgrammingLanguge(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField('Language Description')
    image = models.ImageField(upload_to='images', null=True)
    pub_date = models.DateTimeField(auto_now_add=True, auto_now=False)

class Social(models.Model):
    name = models.CharField(max_length=255)
    url = models.URLField(max_length=255, null=True)
    icon = models.CharField(max_length=255)
    pub_date = models.DateTimeField(auto_now_add=True, auto_now=False)

class HeaderCover(models.Model):
    title = models.CharField(max_length=255, null=True)
    image = models.ImageField(upload_to='images', null=True)
    video = models.FileField(upload_to='videos')
    pub_date = models.DateTimeField(auto_now_add=True, auto_now=False)

class FrontCover(models.Model):
    title = models.CharField(max_length=255, null=True)
    image = models.ImageField(upload_to='images', null=True)
    signature = models.CharField(max_length=255)
    bio = models.TextField('Bio Sentence')
    pub_date = models.DateTimeField(auto_now_add=True, auto_now=False)

    def clean(self):
        validate_only_one_instance(self)

class Subscriber(models.Model):
    email = models.CharField(max_length=255)
    pub_date = models.DateTimeField(auto_now_add=True, auto_now=False)

class Resume(models.Model):
    title = models.CharField(max_length=255, null=True)
    resume = models.FileField(upload_to='cv')
    pub_date = models.DateTimeField(auto_now_add=True, auto_now=False)
    
    def clean(self):
        validate_only_one_instance(self)

class About(models.Model):
    image = models.ImageField(upload_to='images', null=True)
    about_content = RichTextField(null=True);
    address = RichTextField(null=True);
    pub_date = models.DateTimeField(auto_now_add=True, auto_now=False)
    
    def clean(self):
        validate_only_one_instance(self)


