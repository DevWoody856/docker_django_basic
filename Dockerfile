FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /blog_220228
COPY requirements.txt /blog_220228/requirements.txt

RUN pip install -r requirements.txt

COPY . /blog_220228

CMD python manage.py runserver 0.0.0.0:8000