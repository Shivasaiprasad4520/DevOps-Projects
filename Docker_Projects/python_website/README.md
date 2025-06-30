create Django project docker:
--
$ create a folder move inside to it
__
$ then create a virtual environment and activate it
___
```cmd: python -m venv practices_project
cmd: practices_project\Scripts\activate```
__
$ now install Django
__
```cmd: pip install Django```
__
$ now create project
__
```cmd: django-admin startproject docker_project```
__
$ now we get created project folder then move into it
__
$ now create a application
__
```cmd: python manage.py startapp docker_project_app```
__
$ now open vs code with that working director
__ 
$ then setup configuration in settings.py file which is located in project folder
__
$ u need to just add app name in INSTALLED_APPS
__
$ checking server is running or not for that
__
```cmd: python manage.py runserver```
__
$ then go to views.py file in app folder to pass some statement
__
```cmd: from django.https import HttpResponse

     def demo(request):
         return HttpResponse("this is my first Django project")```
___
$ now pass this statement in this urls.py
__
```cmd: from docker_project_app.viewa import demo
     path('demo123/',demo)```
__
$ then go to cli migrate app
__
```cmd: python manage.py migrate```
```
__
---------------------------------------------------------
$ login into the Virtual Machin or use your machin
__
$ install docker
__
$ go to the folder which is project present it
__
$ create a dockerfile in that file
__
$ create requirements.txt file
__
$ Now build a dockerfile into Image
__
```
docker build -t shivasai4520/website:v2 .
docker run -p 8000:8000 shivasai4520/website:v2
```
___
$ Now push that image to docker hub
___
```
docker push shivasai4520/website:v2
```
