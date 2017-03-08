FROM tiangolo/uwsgi-nginx:python3.5

RUN pip install bottle
RUN pip install pika

RUN pip install --upgrade youtube_dl

COPY ./app /app

VOLUME [ "/app/media" ]
