# a Dockerfile specifies how to build a Docker image
# docker hub anaconda3 in google to find image for the anaconda 3 python distribution

FROM ubuntu

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
    
RUN mkdir -p /server_app/
ADD . /server_app/
WORKDIR /server_app/
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "run_app.py"]






#FROM tiangolo/uwsgi-nginx-flask
#RUN mkdir -p /server_app/
#ADD . /server_app/
#WORKDIR /server_app/
#ENTRYPOINT ["python", "run_app.py"]