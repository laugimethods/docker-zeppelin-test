FROM alpine

COPY ./notebook /provided-notebook/
RUN ls /provided-notebook/

VOLUME /notebook

CMD cp -r /provided-notebook/* /notebook/