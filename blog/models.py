from django.db import models
from autoslug import AutoSlugField
from django.template.defaultfilters import slugify
from ckeditor.fields import RichTextField

class Author(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField(unique=True)
    bio = models.TextField()
    
    def __str__(self):
        return self.name

class Category(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=255)
    slug = AutoSlugField(populate_from='name', editable=True, unique_with='name', unique=True)
    image_cover = models.ImageField(upload_to='blog', null=True)
    pub_date = models.DateTimeField(auto_now_add=True, auto_now=False, null=True)
    updated_date = models.DateTimeField(auto_now_add=False, auto_now=True, null=True)

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return "/blog/category/%s/" % self.slug

class Tag(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=255)
    slug = AutoSlugField(populate_from='name', editable=True, unique_with='name', unique=True)
    image_cover = models.ImageField(upload_to='blog', null=True)
    pub_date = models.DateTimeField(auto_now_add=True, auto_now=False, null=True)
    updated_date = models.DateTimeField(auto_now_add=False, auto_now=True, null=True)

    def __str__(self):
        return '%s' % self.name

    def get_absolute_url(self):
        return "/blog/tag/%s/" % self.slug

class Post(models.Model):
    title = models.CharField(max_length=255)
    slug = AutoSlugField(populate_from='title', editable=True, unique_with=('title', 'pub_date'), unique=True)
    body =  RichTextField()
    creator = models.ForeignKey(Author)
    categories = models.ManyToManyField(Category)
    tags = models.ManyToManyField(Tag)
    image_cover = models.ImageField(upload_to='blog')
    pub_date = models.DateTimeField(auto_now_add=True, auto_now=False)
    updated_date = models.DateTimeField(auto_now_add=False, auto_now=True)

    def __unicode__(self):
        return self.title

    def get_absolute_url(self):
        return "/blog/post/%s/%s/%s/%s/" % (self.pub_date.year, self.pub_date.month, self.pub_date.day, self.slug)


