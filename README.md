# Как запустить?
![GitHub all releases](https://img.shields.io/github/downloads/menleev/scpsl_installer/total?logo=appveyor&style=for-the-badge)
![Discord](https://img.shields.io/discord/988571570521903154?color=blue&label=DISCORD&style=for-the-badge)
1. Скачиваем скрипт на linux сервер

    `wget https://raw.githubusercontent.com/menleev/scpsl_installer/main/installer.sh`

   1.2 Выдаем права `installer.sh` вводим `chmod +x installer.sh`

2. Запускаем `installer.sh` вводим `./installer.sh`

3. Создаем пользователя и пароль

4. Ожидайте установки

5. После окончания установки введите `su имя_пользователя` (имя пользователя это имя которое вы создали на 3 шаге) пример `su scpsl`

6. После переходим в каталог `cd /home/имя_пользователя/scpsl` и запускаем `mono MultiAdmin -p 7777` или `./LocalAdmin -p 7777`

-------------------------------------------------------

#доп инструкция

- Установите `apt install screen` (устанавливать через root) и запускайте сервер через созданное окно для вечного онлайна

- Создать окно `screen -S название окна` (запускать уже через созданного пользователя `пункта 3`)

- Зайти в нужное окно `screen -x название окна`

- Выйти из окна `CTRL+A+D`
   
- Узнать колличество окон `screen -ls`
   
- Удалить ненужное окно (можете просто рестартнуть хост `reboot`))) `screen -X -S название окна quit`

-------------------------------------------------------

Знаю что это дерьмо и можно сделать лучше или проще, но я не силён в скриптах, это можно сказать мой базовый уровень, так что не судите строго
