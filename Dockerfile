FROM python:3

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y git && apt-get clean

RUN git clone -b docker_version https://github.com/lgarrosh/Telegram_bot.git

RUN ./run.sh