FROM debian

RUN apt-get update -y
RUN apt-get install -y binutils nasm vim

COPY zad1 /home/root/zad1
COPY zad2 /home/root/zad2

WORKDIR /home/root
