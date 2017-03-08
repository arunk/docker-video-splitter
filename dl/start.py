#!/usr/bin/env python
#-*- coding: utf-8 -*-

import pika
from subprocess import call

connection = pika.BlockingConnection(pika.ConnectionParameters(host='rabbit'))
channel = connection.channel()
channel.queue_declare(queue="download")


def callback(ch, method, properties, body):
    url = body.decode("utf-8")
    if "youtube" in url:
        filename = "yt-{}".format(url.split("v=")[1])
    elif "vimeo" in url:
        filename = "vm-{}".format(url.split("/")[3])

    call(["youtube-dl", "-o", "/download/{}.%(ext)s".format(filename), url], shell=False)

channel.basic_consume(callback,
        queue="download",
        no_ack=True)

channel.start_consuming()
