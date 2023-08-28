FROM ubuntu:20.04

RUN apt update && apt install openssh-server sudo -y
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test
RUN echo 'test:testpassw123' | chpasswd
EXPOSE 9090
EXPOSE 22
CMD ["ssh","-D", "9090", "-N", "test@some.zeabur.app"]
