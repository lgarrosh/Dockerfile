FROM python:3

WORKDIR /app

ENV PYTHONPATH=/app

# Устанавливаем необходимые утилиты, включая Git
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Клонируем ветку docker_version из репозитория
RUN git clone --branch docker_version --single-branch https://github.com/lgarrosh/Telegram_bot.git .

RUN pip install -r requirements.txt

# Указываем команду для запуска приложения
CMD ["python3", "source/main.py"]
