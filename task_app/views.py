from django.contrib import messages
from django.contrib.auth import login, authenticate
from django.contrib.auth.models import User
from django.http import JsonResponse
from django.shortcuts import render, redirect
from requests import auth
from task_app.models import Branches, Districts, Registration
from django.contrib.auth.decorators import login_required
from .models import Registration 
from django import forms 



# Create your views here.

def base(request):
    return render(request, 'base.html')


def login_user(request):
    if request.method == 'POST':
        username = request.POST['name']
        password = request.POST['psw']
        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)
            return redirect('task_app:base')  # Redirect to 'base' view
        else:
            messages.error(request, "Invalid username or password")  # Display error message
            return redirect('task_app:login')  # Redirect back to 'login' view

    return render(request, 'login.html')


def register(request):
    
    if request.method == 'POST':
        name = request.POST['name']
        password = request.POST['psw']
        cpassword = request.POST['psw-repeat']  # Update this line

        if password == cpassword:
            user = User.objects.create_user(username=name, password=password)
            user.save()
            messages.success(request, "User created")
            return redirect('task_app:newpage')  # Use the correct URL namespace
        else:
            messages.error(request, "Passwords do not match")

    return render(request, 'register.html')


def login_reg(request):
    if request.method == 'POST':
        username = request.POST['name']
        password = request.POST['psw']
        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)  # Use the login function from 'django.contrib.auth'
            return redirect('task_app:base')  # Redirect to 'base' view
        else:
            messages.error(request, "Invalid username or password")  # Display error message
            return redirect('task_app:register')  # Redirect back to 'login_reg' view
    return render(request, 'login_reg.html')


#def form(request):
#    distcontext = Districts.objects.all()
#    brancontext = Branches.objects.all()
#    if request.method == 'POST':
 #       name = request.POST['name']
  #      dob = request.POST['dob']
   #     age = request.POST['age']
   #     gender = request.POST['gender']
    #    phonenumber = request.POST['phonenumber']
     #   email = request.POST['email']
      #  address = request.POST['address']
       # account = request.POST['account']
        #user = authenticate(request, name=name, dob=dob, age=age, gender=gender,
         #                   phonenumber=phonenumber, email=email, address=address, account=account)

  #      if user is not None:
   #         return redirect('task_app:new_register')
    #    else:
     #       return redirect('task_app:submit')  # redirect to submit page
 #   return render(request, 'new_register.html', {'district': distcontext, 'branch': brancontext})


def submit(request):
    return render(request, 'submit.html')


def newpage(request):
    return render(request, 'newpage.html')


def get_branches(request, district_id):
    branches = Branches.objects.filter(district_id=district_id)
    data = [{'id': branch.id, 'branch': branch.branch} for branch in branches]
    return JsonResponse(data, safe=False)

class RegistrationForm(forms.ModelForm):
    class Meta:
        model = Registration
        fields = ['name', 'dob', 'age', 'gender', 'email', 'account', 'phonenumber']


def new_register(request):
    if request.method == 'POST':
        # Get form data
        district_id = request.POST.get('district')
        branch_id = request.POST.get('branch')
        name = request.POST.get('name')
        dob = request.POST.get('dob')
        age = request.POST.get('number')
        gender = request.POST.get('gender')
        email = request.POST.get('email')
        address = request.POST.get('address')
        account_type = request.POST.get('account')
        phone_number = request.POST.get('phoneNumber')
        materials_required = ",".join(request.POST.getlist('materials[]'))

        # Create a new Registration object and save it to the database
        registration = Registration(
            districts_list=district_id,
            branches_list=branch_id,
            name=name,
            dob=dob,
            age=age,
            gender=gender,
            email=email,
            address=address,
            account=account_type,
            phonenumber=phone_number,
            materials_req=materials_required
        )
        registration.save()
        messages.success(request, 'Registration successful!')

        # Redirect to a success page or do whatever you want after successful form submission
        return redirect('task_app:registration_success')  
    else:
        # Fetch districts to populate the first dropdown
        districts = Districts.objects.all()
        return render(request, 'new_register.html', {'districts': districts})

def registration_success(request):
    return render(request, 'registration_success.html')
