FROM java:7

MAINTAINER pippo

ENV FOO bar

WORKDIR /home/root/javahelloworld

COPY src /home/root/javahelloworld/src

RUN mkdir bin ; javac -d bin src/HelloWorld.java
RUN apt-get install wget

ENTRYPOINT ["java","-cp","bin","HelloWorld"]


