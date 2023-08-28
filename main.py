import os

os.system("sudo apt-get install openssh-server")
os.system("sudo ufw allow ssh")
os.system("sudo systemctl start ssh")
