FROM jrottenberg/ffmpeg

RUN mkdir /input && mkdir /output

COPY ./start.sh /start.sh
RUN chmod +x /start.sh

VOLUME [ "/input", "/output" ]

ENTRYPOINT [ "/bin/sh", "-c", "while true; do /start.sh; sleep 10; done"]
