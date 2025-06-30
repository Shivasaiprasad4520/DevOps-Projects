FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Run collectstatic
RUN python manage.py collectstatic --noinput

# Run the app
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "python_website.wsgi:application"]
