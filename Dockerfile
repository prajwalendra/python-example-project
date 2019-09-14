FROM python:2.7-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY . /usr/src/app 
RUN  chgrp -R 0 /usr/src/app && chmod -R g=u /usr/src/app 

USER 1001

EXPOSE 8080

ENTRYPOINT [ "python", "project" ]
