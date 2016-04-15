FROM maven:3.3.9-jdk-8
MAINTAINER Gildas Cuisinier

RUN apt-get update && apt-get install -y   phalanx gnuchess
COPY chess-club-0.7.0.jar .

ENV PATH /usr/games/:$PATH

EXPOSE 8080
CMD  java -jar chess-club-0.7.0.jar 