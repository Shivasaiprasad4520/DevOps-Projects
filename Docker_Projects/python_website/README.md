create Django project docker:
$ create a folder move inside to it
$ then create a virtual environment and activate it
```cmd: python -m venv practices_project
cmd: practices_project\Scripts\activate```
$ now install Django
```cmd: pip install Django```
$ now create project
```cmd: django-admin startproject docker_project```
$ now we get created project folder then move into it
$ now create a application 
```cmd: python manage.py startapp docker_project_app```
$ now open vs code with that working director 
$ then setup configuration in settings.py file which is located in project folder
$ u need to just add app name in INSTALLED_APPS 
$ checking server is running or not for that 
```cmd: python manage.py runserver```
$ then go to views.py file in app folder to pass some statement
```cmd: from django.https import HttpResponse

     def demo(request):
         return HttpResponse("this is my first Django project")```
$ now pass this statement in this urls.py
```cmd: from docker_project_app.viewa import demo
     path('demo123/',demo)```

$ then go to cli migrate app
```cmd: python manage.py migrate```
---------------------------------------------------------
$ login into the Virtual Machin or use your machin
$ install docker
$ go to the folder which is project present it
$ create a dockerfile in that file
$ create requirements.txt file
$ Now build a dockerfile into Image
```
docker build -t shivasai4520/website:v2 .
docker run -p 8000:8000 shivasai4520/website:v2
```
$ Now push that image to docker hub
```
docker push shivasai4520/website:v2
```
