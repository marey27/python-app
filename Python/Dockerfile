FROM python:alpine

WORKDIR /home/app

COPY requirements.txt /home/app

RUN pip install --no-cache-dir -r requirements.txt

COPY . /home/app

CMD ["python3", "manage.py", "runserver", "0.0.0.0:5000"]

EXPOSE 5000
