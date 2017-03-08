import bottle
import pika
import os
import logging

logger = logging.getLogger(__name__)
bottle.debug(True)

@bottle.route('/')
def index():
    return bottle.template("index")

@bottle.post("/submit")
def submit():
    url = bottle.request.forms.get("url")
    connection = pika.BlockingConnection(pika.ConnectionParameters(host="rabbit"))
    logger.debug("connected to rabbit mq")
    channel = connection.channel()
    channel.queue_declare(queue="download")
    logger.debug("publishing")
    channel.basic_publish(exchange='',
                routing_key="download",
                body=url)
    connection.close()
    logger.debug("redirecting")
    bottle.redirect("/media")

@bottle.route("/media")
def media():
    files = [x for x in os.listdir("./media")]
    return bottle.template("media", **locals())

@bottle.route("/dl/<filename:path>")
def media_file(filename):
    return bottle.static_file(filename, root="./media")

@bottle.route('/static/<filename:path>')
def static(filename):
    return bottle.static_file(filename, root="./static")

application = bottle.default_app()
