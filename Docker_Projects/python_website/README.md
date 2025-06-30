# 🐳 Django Project with Docker Containerization

This project demonstrates how to build and run a **Django web application** inside a **Docker container**, including full setup from scratch to pushing the Docker image to Docker Hub.

---

## 📁 Project Setup (Without Docker)

### 🔨 1. Create and Enter a Project Folder
```bash
mkdir django-docker-practice
cd django-docker-practice```

### 🧪 2. Create and Activate a Virtual Environment
```
python -m venv practices_project
practices_project\Scripts\activate  # On Windows 
# OR
source practices_project/bin/activate  # On Linux/Mac ```

### 📦 3. Install Django
```
pip install Django
```
### 🚀 4. Create Django Project and App
bash
Copy
Edit
django-admin startproject docker_project
cd docker_project
python manage.py startapp docker_project_app
### ⚙️ Configuration
#### 🛠 5. Update settings.py
    In docker_project/settings.py:

     Add your app name to INSTALLED_APPS:
```
INSTALLED_APPS = [
    ...
    'docker_project_app',
]```


### 🧪 Test the App Locally
#### 🧾 6. Create a Simple View
In docker_project_app/views.py:
```
from django.http import HttpResponse

def demo(request):
    return HttpResponse("This is my first Django project!")```

### 🔗 7. Route the View in urls.py
In docker_project/urls.py:
```
from django.urls import path
from docker_project_app.views import demo

urlpatterns = [
    path('demo123/', demo),
]```

### 🔄 8. Apply Migrations and Run Server
```
python manage.py migrate
python manage.py runserver
Visit http://localhost:8000/demo123/ in your browser.
```
### 🐳 Dockerizing the Django App
#### 🐧 9. Install Docker
```
 Install Docker on your system from https://www.docker.com
```

### 📄 10. Create Dockerfile and requirements.txt
requirements.txt:
```
Django
gunicorn
```
Dockerfile:
```
FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python manage.py collectstatic --noinput

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "docker_project.wsgi:application"]
```

### 🔨 Building and Running the Docker Image
#### 🛠 11. Build the Docker Image
```
docker build -t shivasai4520/website:final .
```

### ▶️ 12. Run the Docker Container
```
docker run -p 8000:8000 shivasai4520/website:final
Open http://localhost:8000/demo123/ ``` in your browser to see your app running inside Docker!
![image](https://github.com/user-attachments/assets/85d7dc3c-e753-45b5-8dd3-26df4781017b)

### ☁️ Push Docker Image to Docker Hub
#### 📤 13. Push to Your Docker Hub Repository
```
docker push shivasai4520/website:v2
```
![image](https://github.com/user-attachments/assets/9a4ebd0a-fa99-4125-8efc-f8746ef6b874)

## 🎉 Conclusion
You now have a fully containerized Django application:

Easily reproducible 🧱

Runs anywhere with Docker 💻

Shareable via Docker Hub 🌍

📌 Connect With Me
**If you found this useful or want to collaborate, feel free to connect on LinkedIn or check out my Docker Hub Profile.**

#Django #Docker #DevOps #Python #WebDevelopment #Containerization #Portfolio
