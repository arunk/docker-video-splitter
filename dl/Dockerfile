FROM python:3

RUN pip install --upgrade youtube_dl
RUN pip install pika

COPY start.py /start.py
RUN chmod +x /start.py

RUN mkdir /download

VOLUME [ "/download" ]

ENTRYPOINT [ "/start.py" ]
