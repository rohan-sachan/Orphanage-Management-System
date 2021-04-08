from django.shortcuts import render

# Create your views here.
def showDemoPage(request):
    return render(request,"hod_template/add_staff_template.html")