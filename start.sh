#!/bin/bash

# Разрешение доступа к X серверу для локальных пользователей
xhost +local:root

echo "Запуск ksysguard в Docker..."

# Установка переменных среды для D-Bus
export $(dbus-launch)

# Запуск Docker контейнера
docker run --rm -it --privileged --pid=host \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /usr/share/icons:/usr/share/icons:ro \
    -v /usr/share/themes:/usr/share/themes:ro \
    -v $HOME/.config/KDE:/home/user/.config/KDE:ro \
    my-ksysguard

# Убиваем D-Bus сессию
kill $DBUS_SESSION_BUS_PID

echo "ksysguard был закрыт."

# Восстановление настроек безопасности X сервера
xhost -local:root

echo "Доступ к X серверу восстановлен."
