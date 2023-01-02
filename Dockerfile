FROM debian:11

RUN apt update && apt upgrade -y
RUN apt-get install git curl python3-pip ffmpeg -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
COPY . /app/
WORKDIR /app/
CMD bash start
