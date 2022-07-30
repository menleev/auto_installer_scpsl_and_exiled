#!/bin/bash
echo "Введите имя пользователя под которым хотите создать сервер"
echo "Создайте сложный пароль и сохраните его!!! (пароль при вводе не отображается!!!)"
read nameuser
adduser $nameuser
echo "Всё, пользователь создан, приступаем к установке"
chmod -R 777 /home/$nameuser

echo "Установка чего там важного..."
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install mono-complete
sudp apt install screen
sudo apt-get install lib32gcc-s1
sleep 3

echo "Создание папок и выдача права (хз зачем так много, но надо)))"
mkdir /home/$nameuser/steamcmd
chmod -R 777 /home/$nameuser/steamcmd

mkdir /home/$nameuser/.config
chmod -R 777 /home/$nameuser/.config

mkdir /home/$nameuser/scpsl
chmod -R 777 /home/$nameuser/scpsl
sleep 3

echo "Установка SteamCmd и SCP"
cd /home/$nameuser/steamcmd
wget -P /home/$nameuser/steamcmd/ https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -zxvf /home/$nameuser/steamcmd/steamcmd_linux.tar.gz
cd /home/$nameuser/steamcmd
chmod -R 777 /home/$nameuser/steamcmd/./steamcmd.sh
chmod -R 777 /home/$nameuser/steamcmd/linux32/steamcmd
cd /home/$nameuser/steamcmd
./steamcmd.sh +force_install_dir /home/$nameuser/scpsl +login anonymous +app_update 996560 validate +quit
sleep 3

wget -P /home/$nameuser/scpsl/ https://github.com/galaxy119/EXILED/releases/download/2.2.5/Exiled.Installer-Linux
cd /home/$nameuser/scpsl
chmod +x Exiled.Installer-Linux
./Exiled.Installer-Linux --path /home/$nameuser/scpsl --appdata /home/$nameuser/.config --pre-releases --exit
sleep 3

wget -P /home/$nameuser/scpsl/ https://github.com/ServerMod/MultiAdmin/releases/download/3.4.0/MultiAdmin.exe

echo "Выдаем оставшиеся права"
chmod -R 777 /home/$nameuser/scpsl
chmod -R 777 /home/$nameuser/.config
chmod -R 777 /home/$nameuser
sleep 3

echo "Ну вот и всё)"
