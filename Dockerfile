FROM ubuntu:14.04

COPY ./notebook /provided-notebook/
RUN ls /provided-notebook/

VOLUME /notebook

CMD cp -r -u /provided-notebook/* /notebook/