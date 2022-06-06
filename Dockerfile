FROM ubuntu:latest

RUN apt update 
RUN apt install wget curl lsb-release -y
RUN wget -qO- https://dl.hoobs.org/stable | bash -
RUN apt install hoobsd hoobs-cli hoobs-gui -y
RUN hbs install -p 80

COPY data /var/lib/hoobs

CMD ["/usr/bin/hoobsd", "hub"]
