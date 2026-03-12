FROM python:3.13-slim

WORKDIR /app

COPY . .

EXPOSE 80

RUN pip install -r requirements.txt --no-cache-dir 

# Use Gunicorn as the production WSGI server, listening on port 80
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:app"]