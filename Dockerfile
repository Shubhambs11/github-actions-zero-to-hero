FROM pyhton:3.13-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["python","app.py"]