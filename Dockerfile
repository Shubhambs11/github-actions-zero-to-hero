FROM python:3.13-slim

WORKDIR /app

COPY . .

EXPOSE 80

RUN pip install -r requirements.txt --no-cache-dir 

CMD ["python","app.py"]