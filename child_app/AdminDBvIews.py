from django.contrib import messages
from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from django.urls import reverse
from django.db import connection
from django.utils.dateparse import parse_date

# from child_app.forms import AddStudentForm, EditStudentForm
from child_app.models import Child
from child_app.models import Room
from child_app.models import Donation_History


def admin_home(request):
    return render(request,"admindb_template/home_content.html")

def add_child(request):
    return render(request,"admindb_template/add_child_template.html")
def add_child_save(request):
    if request.method!="POST":
        return HttpResponse("Method Not Allowed")
    else:
        child_id=request.POST.get("child_id")
        First_Name=request.POST.get("First_Name")
        Last_Name=request.POST.get("Last_Name")
        CPhoto=request.POST.get("CPhoto")
        DOB=parse_date(request.POST.get("DOB"))
        DOA=parse_date(request.POST.get("DOA"))
        CANo=request.POST.get("CANo")
        CPANNo=request.POST.get("CPANNo")
        GName=request.POST.get("GName")
        GANo=request.POST.get("GANo")
        GPANNo=request.POST.get("GPANNo")
        rid=request.POST.get("rid_id")
        curr = connection.cursor()
        try:
            curr.execute("INSERT INTO child_app_child VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", [child_id,First_Name,Last_Name,DOB,DOA,CPhoto,CANo,CPANNo,GName,GANo,GPANNo,rid_id])
            messages.success(request,"Successfully Added Child")
            return HttpResponseRedirect(reverse("add_child"))
        except:
            messages.error(request,"Failed to Add Child")
            return HttpResponseRedirect(reverse("add_child"))

# def add_child_save(request):
#     if request.method!="POST":
#         return HttpResponse("Method Not Allowed")
#     else:
#         first_name=request.POST.get("first_name")
#         last_name=request.POST.get("last_name")
#         username=request.POST.get("username")
#         email=request.POST.get("email")
#         password=request.POST.get("password")
#         address=request.POST.get("address")
#         try:
#             user=CustomUser.objects.create_user(username=username,password=password,email=email,last_name=last_name,first_name=first_name,user_type=2)
#             user.staffs.address=address
#             user.save()
#             messages.success(request,"Successfully Added Staff")
#             return HttpResponseRedirect(reverse("add_staff"))
#         except:
#             messages.error(request,"Failed to Add Staff")
#             return HttpResponseRedirect(reverse("add_staff"))

def add_room(request):
    return render(request,"admindb_template/add_room_template.html")

def add_room_save(request):
    if request.method!="POST":
        return HttpResponse("Method Not Allowed")
    else:
        room_id=request.POST.get("room_id")
        floor=int(request.POST.get("floor"))
        max_occupancy=int(request.POST.get("max_occupancy"))
        curr = connection.cursor()
        try:
            curr.execute("INSERT INTO child_app_room VALUES (%s, %s, %s)", [room_id,floor,max_occupancy])
            messages.success(request,"Successfully Added Room")
            return HttpResponseRedirect(reverse("add_room"))
        except:
            messages.error(request,"Failed to Add Room")
            return HttpResponseRedirect(reverse("add_room"))
            
def add_donation_history(request):
    return render(request,"admindb_template/add_donation_history_template.html")

def add_donation_history_save(request):
    if request.method!="POST":
        return HttpResponse("Method Not Allowed")
    else:
        Don_id=request.POST.get("don_id")
        DName=request.POST.get("DName")
        DPanno=request.POST.get("DPanno")
        Ddate=parse_date(request.POST.get("Ddate"))
        Amt=int(request.POST.get("Amt"))
        curr = connection.cursor()
        try:
            curr.execute("INSERT INTO child_app_donation_history VALUES (%s, %s, %s, %s, %s)", [Don_id,DName,DPanno,Ddate,Amt])
            messages.success(request,"Successfully Added Donation History")
            return HttpResponseRedirect(reverse("add_donation_history"))
        except:
            messages.error(request,"Failed to Add Donation History")
            return HttpResponseRedirect(reverse("add_donation_history"))
def manage_child(request):
    children = Child.objects.raw('SELECT * FROM child_app_child')
    return render(request,"admindb_template/manage_child_template.html", {"children":children})

def manage_room(request):
    rooms = Room.objects.raw('SELECT * FROM child_app_room')
    return render(request,"admindb_template/manage_room_template.html", {"rooms":rooms})

def manage_donation_history(request):
    donations = Donation_History.objects.raw('SELECT * FROM child_app_donation_history')
    return render(request,"admindb_template/manage_donation_history_template.html", {"donations":donations})
def edit_child(request,child_id):
    child=Child.objects.raw('SELECT * FROM child_app_room WHERE child_id = %s',[child_id])[0]
    return render(request,"admindb_template/edit_child_template.html",{"child":child})
def edit_child_save(request):
    if request.method!="POST":
        return HttpResponse("<h2>Method Not Allowed</h2>")
    else:
        child_id=request.POST.get("child_id")
        First_Name=request.POST.get("First_Name")
        Last_Name=request.POST.get("Last_Name")
        CPhoto=request.POST.get("CPhoto")
        DOB=parse_date(request.POST.get("DOB"))
        DOA=parse_date(request.POST.get("DOA"))
        CANo=request.POST.get("CANo")
        CPANNo=request.POST.get("CPANNo")
        GName=request.POST.get("GName")
        GANo=request.POST.get("GANo")
        GPANNo=request.POST.get("GPANNo")
        rid=request.POST.get("rid_id")
        curr = connection.cursor()
        try:
            curr.execute("UPDATE child_app_child SET First_Name = %s,Last_Name = %s, CPhoto = %s,DOB = %s,DOA = %s,CANo = %s,CPANNo = %s,GName = %s,GANo = %s,GPANNo = %s,rid = %s  WHERE child_id = %s", [First_Name,Last_Name,CPhoto,DOB,DOA,CANo,CPANNo,GName,GANo,GPANNo,rid])
            messages.success(request,"Successfully Edited Child Details")
            return HttpResponseRedirect("/edit_child/"+child_id)
        except:
            messages.error(request,"Failed to Edit Child Details")
            return HttpResponseRedirect("/edit_child/"+child_id)

def edit_room(request,room_id):
    room=Room.objects.raw('SELECT * FROM child_app_room WHERE room_id = %s',[room_id])[0]
    return render(request,"admindb_template/edit_room_template.html",{"room":room})

def edit_room_save(request):
    if request.method!="POST":
        return HttpResponse("<h2>Method Not Allowed</h2>")
    else:
        room_id=request.POST.get("room_id")
        floor=int(request.POST.get("floor"))
        max_occupancy=int(request.POST.get("max_occupancy"))
        curr = connection.cursor()
        try:
            curr.execute("UPDATE child_app_room SET floor = %s, max_occupancy = %s WHERE room_id = %s", [floor,max_occupancy,room_id])
            messages.success(request,"Successfully Edited Room Details")
            return HttpResponseRedirect("/edit_child/"+child_id)
        except:
            messages.error(request,"Failed to Edit Room Details")
            return HttpResponseRedirect("/edit_room/"+room_id)

def edit_donation_history(request,Don_id):
    donation=Donation_History.objects.raw('SELECT * FROM child_app_donation_history WHERE Don_id = %s',[Don_id])[0]
    return render(request,"admindb_template/edit_donation_history_template.html",{"donation":donation})

def edit_donation_history_save(request):
    if request.method!="POST":
        return HttpResponse("<h2>Method Not Allowed</h2>")
    else:
        Don_id=request.POST.get("Don_id")
        DName=request.POST.get("DName")
        DPanno=request.POST.get("DPanno")
        Ddate=parse_date(request.POST.get("Ddate"))
        Amt=int(request.POST.get("Amt"))
        curr = connection.cursor()
        try:
            curr.execute("UPDATE child_app_donation_history SET DName = %s, DPanno = %s,Ddate = %s,Amt = %s WHERE Don_id = %s", [DName,DPanno,Ddate,Amt,Don_id])
            messages.success(request,"Successfully Edited Donation Details")
            return HttpResponseRedirect("/edit_donation_history/"+Don_id)
        except:
            messages.error(request,"Failed to Edit Room Details")
            return HttpResponseRedirect("/edit_donation_history/"+Don_id)