from django.shortcuts import get_object_or_404, render, render_to_response
from django.core.mail import send_mail, BadHeaderError, EmailMultiAlternatives
from django.http import HttpResponse
from django.template.loader import render_to_string
from django.template import loader, Context
from django.http import HttpResponseRedirect, JsonResponse
from django.views.generic import View
from django.core.validators import validate_email
from django import forms
from django.core import serializers
from portfolio.models import *
from django.views.decorators.csrf import csrf_exempt
from full_url.grabber import RequestGrabber
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage

def index(request):
    url_parts = RequestGrabber(request)
    return render_to_response('portfolio/pages/index.html', {
        'project_list' : Project.objects.all().order_by('?')[:6],
        'meta': SiteMetaSeo.objects.all(),
        'skill': ProgrammingLanguge.objects.all(),
        'social': Social.objects.all(),
        'front': FrontCover.objects.all(),
        'header': HeaderCover.objects.all(),
        'resume': Resume.objects.all(),
        'about': About.objects.all(),
        'base_url': url_parts.protocol() + url_parts.domain(),
    })

def portfolio_list(request):
    url_parts = RequestGrabber(request)
    post_list = Project.objects.all()
    paginator = Paginator(post_list, 12)
    page = request.GET.get('page')

    try:
        posts = paginator.page(page)
    except PageNotAnInteger:
        posts = paginator.page(1)
    except EmptyPage:
        posts = paginator.page(paginator.num_pages)

    return render_to_response('portfolio/pages/portfolio_list.html', {
        'project' : posts,
        'social' : Social.objects.all(),
        'base_url': url_parts.protocol() + url_parts.domain(),
    })

def portfolio_detail(request, pk):
    url_parts = RequestGrabber(request)
    return render_to_response('portfolio/pages/portfolio_detail.html', {
        'project' : Project.objects.filter(pk=pk),
        'base_url': url_parts.protocol() + url_parts.domain(),
    })

@csrf_exempt
def mail(request):
    url_parts = RequestGrabber(request)
    fullname = request.POST.get('fullname', '')
    contact_email = request.POST.get('email', '')
    phone = request.POST.get('phone', '')
    message = request.POST.get('message', '')

    context = {
        'fullname' : fullname,
        'email' : contact_email,
        'phone' : phone,
        'message' : message,
        'base_url': url_parts.protocol() + url_parts.domain(),
    }
    mail_template = render_to_string('portfolio/mails/base_template.html', context)

    if request.method == 'POST':
        if fullname and message and contact_email:
            try:
                validate_email(contact_email)
                try:
                    email = EmailMultiAlternatives(fullname, mail_template)
                    email.attach_alternative(mail_template, "text/html")
                    email.to = [contact_email]
                    email.send()
                except BadHeaderError:
                    return HttpResponse('Invalid header found. Please contact software developer.')
                return HttpResponse('Thank you!')
            except forms.ValidationError:
                return HttpResponse('Invalid Email Address.')
        else:
            return HttpResponse('Make sure all fields are entered and valid.')
    else:
        return HttpResponse('Invalid request!')

@csrf_exempt
def subscribe(request):
    email = request.POST.get('email', '')
    if request.method == 'POST':
        try:
            validate_email(email)
            Subscriber.objects.create(email = email)
            return HttpResponse('Thank you!')
        except forms.ValidationError:
            return HttpResponse('Invalid Email Address.')
    else:
        return HttpResponse('Invalid request!')

@csrf_exempt
def header(request):
    if request.method == 'GET':
        header = HeaderCover.objects.all().order_by('?')[:1]
        return HttpResponse(serializers.serialize("json", header))
    else:
        return HttpResponse('')


