# a Dockerfile specifies how to build a Docker image
# docker hub anaconda3 in google to find image for the anaconda 3 python distribution

FROM tiangolo/uwsgi-nginx-flask

ADD . /code
WORKDIR /code

ENTRYPOINT ["python", "run_app.py"]