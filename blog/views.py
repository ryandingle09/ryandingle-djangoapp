from django.shortcuts import render, render_to_response, get_object_or_404
from blog.models import Post, Category, Author, Tag
from portfolio.models import Social
from django.conf.urls import url
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.http import HttpResponse
from full_url.grabber import RequestGrabber

def index(request):
    url_parts = RequestGrabber(request)
    post_list = Post.objects.all()
    paginator = Paginator(post_list, 10)
    page = request.GET.get('page')

    try:
        posts = paginator.page(page)
    except PageNotAnInteger:
        posts = paginator.page(1)
    except EmptyPage:
        posts = paginator.page(paginator.num_pages)

    return render_to_response('blog/pages/index.html', {
        'social' : Social.objects.all(),
        'category': Category.objects.all(),
        'tag': Tag.objects.all(),
        'post_list': posts,
        'base_url': url_parts.protocol() + url_parts.domain(),
    })

def post_detail(request, year, month, day, slug):
    url_parts = RequestGrabber(request)
    posts = Post.objects.filter(slug=slug)
    return render_to_response('blog/pages/post_detail.html', {
        'category' : Category.objects.all(),
        'social' : Social.objects.all(),
        'tag': Tag.objects.all(),
        'posts': posts,
        'base_url': url_parts.protocol() + url_parts.domain(),
    })

def category_detail(request, slug):
    url_parts = RequestGrabber(request)
    category = get_object_or_404(Category, slug=slug)
    post_list = Post.objects.filter(categories=category)
    paginator = Paginator(post_list, 10)
    page = request.GET.get('page')

    try:
        posts = paginator.page(page)
    except PageNotAnInteger:
        posts = paginator.page(1)
    except EmptyPage:
        posts = paginator.page(paginator.num_pages)

    return render_to_response('blog/pages/category_detail.html', {
        'categories' : Category.objects.filter(slug=slug),
        'social' : Social.objects.all(),
        'category': Category.objects.all(),
        'tag': Tag.objects.all(),
        'posts': posts,
        'base_url': url_parts.protocol() + url_parts.domain(),
    })

def tag_detail(request, slug):
    url_parts = RequestGrabber(request)
    tag = get_object_or_404(Tag, slug=slug)
    post_list = Post.objects.filter(tags=tag)
    paginator = Paginator(post_list, 10)
    page = request.GET.get('page')

    try:
        posts = paginator.page(page)
    except PageNotAnInteger:
        posts = paginator.page(1)
    except EmptyPage:
        posts = paginator.page(paginator.num_pages)

    return render_to_response('blog/pages/tag_detail.html', {
        'tags' : Tag.objects.filter(slug=slug),
        'social' : Social.objects.all(),
        'category': Category.objects.all(),
        'tag': Tag.objects.all(),
        'posts': posts,
        'base_url': url_parts.protocol() + url_parts.domain(),
    })
