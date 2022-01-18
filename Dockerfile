# a Dockerfile specifies how to build a Docker image
# docker hub anaconda3 in google to find image for the anaconda 3 python distribution

FROM tiangolo/uwsgi-nginx-flask

RUN mkdir -p /server_app/
ADD . /server_app/
WORKDIR /server_app/

ENTRYPOINT ["python", "run_app.py"]