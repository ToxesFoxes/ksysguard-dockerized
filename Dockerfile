FROM debian:buster

# Установка необходимых пакетов
RUN apt-get update && apt-get install -y \
    ksysguard \
    dbus-x11 \
    mesa-utils \
    libgl1-mesa-dri \
    libgl1-mesa-glx \
    kde-style-breeze \
    kde-style-breeze-qt4 \
    && rm -rf /var/lib/apt/lists/*

# Настройка переменной окружения для использования темы Breeze
ENV QT_STYLE_OVERRIDE=Breeze

# Настройка рабочего окружения
ENV DISPLAY=unix$DISPLAY

# Создание пользователя для запуска приложения
RUN useradd -m user
USER user

# Запуск ksysguard при старте контейнера
CMD ["ksysguard"]
