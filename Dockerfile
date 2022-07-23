FROM python:3.10.5-slim-bullseye

WORKDIR /flask-app

COPY ./requirements.txt /flask-app/requirements.txt
RUN  pip install -r requirements.txt

COPY . /flask-app/

ENV FLASK_APP=hello

CMD ["flask", "run"]