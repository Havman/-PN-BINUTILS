FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y binutils nasm vim gcc

COPY exercise1 /home/root/exercise1
COPY exercise2 /home/root/exercise2
COPY sol.sh /home/root/

RUN chmod +x /home/root/sol.sh
CMD ./sol.sh

WORKDIR /home/root


