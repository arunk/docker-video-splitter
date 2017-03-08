# About
A [docker](https://docker.io) based web service which takes a video clip url, downloads the video and splits the video file into its video and audio components. The service uses [youtube_dl](https://rg3.github.io/youtube-dl/), [ffmpeg](https://ffmpeg.org/), [rabbitmq](https://www.rabbitmq.com/).

# Requirements
This project must be run on a web host with Docker and [docker-compose](https://docs.docker.com/compose/) installed on it. The project is also configured to run behind [docker-nginx-reverse-proxy](https://github.com/jwilder/nginx-proxy). If this is not the case simply un-comment lines #17 & #18 in docker-compose.yml

# Run
To run the service:

    $ docker-compose up -d

If being run with the docker nginx reverse proxy, then the site will be accessible at the VIRTUAL_HOST environment variable mentioned on line #12 of docker-compose.yml. Otherwise this will be accessible at whatever IP address, URL that points to this web server.
