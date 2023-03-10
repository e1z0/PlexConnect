FROM python:2.7.18-slim-stretch

#RUN apt-get install \

COPY . /app

#ENTRYPOINT ["/usr/local/bin/python2.7", "/app/PlexConnect.py"]
ENTRYPOINT ["sleep", "infinity"]
