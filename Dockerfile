FROM ubuntu:20.04

RUN apt update && apt install openssh-server sudo -y
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test
RUN echo 'test:testpassw123' | chpasswd
CMD ["ssh","-D", "8080", "-N", "test@some.zeabur.app"]
