import os

os.system("apt-get install openssh-server -y")
os.system("ufw allow ssh")
os.system("systemctl start ssh")
os.system("systemctl status ssh")
