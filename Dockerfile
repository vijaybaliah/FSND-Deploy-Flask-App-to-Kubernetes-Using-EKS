FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt --upgrade pip
# ENV DIRPATH /env_file
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]