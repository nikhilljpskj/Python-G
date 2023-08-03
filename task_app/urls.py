from django.urls import path
from task_app import views

app_name = 'task_app'

urlpatterns = [
    path('', views.base, name='base'),
    path('login/', views.login_user, name='login'),
    path('register/', views.register, name='register'),
    path('login_reg/', views.login_reg, name='login_reg'),
    path('new_register/', views.new_register, name='new_register'),
    path('registration_success/', views.registration_success, name='registration_success'),

    path('submit/', views.submit, name='submit'),
    path('newpage/', views.newpage, name='newpage'),
    path('get_branches/<int:district_id>/', views.get_branches, name='get_branches'),
]

