FROM python:3.6-alpine
LABEL maintainer="shiroshana@gmail.com"
ENV PROJECT_ROOT /app
WORKDIR $PROJECT_ROOT
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD python manage.py runserver 0.0.0.0:8000