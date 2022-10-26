FROM ubuntu

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
RUN echo $JAVA_HOME
RUN apt-get update && apt-get install -y openjdk-8-jdk && echo "jdk 8  install completed"
RUN apt-get install -y vim && apt-get install -y axel 

RUN axel http://archive.apache.org/dist/flume/1.8.0/apache-flume-1.8.0-bin.tar.gz
RUN mkdir /flume
ENV FLUME_HOME /flume
ENV PATH $PATH:$FLUME_HOME/bin:$JAVA_HOME/bin
RUN tar zvxf /apache-flume-1.8.0-bin.tar.gz --directory /flume --strip 1
