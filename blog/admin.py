from django.contrib import admin
from .models import Author, Category, Tag, Post
from django.contrib.auth.models import User

class AuthorAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'bio')
    list_filter = ['name', 'email', 'bio']
    search_fields = ['name', 'email', 'bio']

class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'pub_date')
    list_filter = ['name', 'description', 'pub_date']
    search_fields = ['name', 'description', 'pub_date']
    prepopulated_fields = {'slug': ('name',)}

class TagAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'pub_date')
    list_filter = ['name', 'description', 'pub_date', 'pub_date']
    search_fields = ['name', 'description', 'pub_date']
    prepopulated_fields = {'slug': ('name',)}

class PostAdmin(admin.ModelAdmin):
    list_display = ('title', 'pub_date')
    list_filter = ['title', 'updated_date']
    search_fields = ['title', 'author']
    prepopulated_fields = {'slug': ('title',)}
    exclude = ('author',)

admin.site.register(Author, AuthorAdmin)
admin.site.register(Category, CategoryAdmin)
admin.site.register(Tag, TagAdmin)
admin.site.register(Post, PostAdmin)