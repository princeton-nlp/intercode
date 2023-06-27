FROM alpine:latest

ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

USER root
RUN touch /entrypoint.sh
RUN echo "/usr/bin/python" > /entrypoint.sh
RUN chmod u+x /entrypoint.sh

CMD /entrypoint.sh