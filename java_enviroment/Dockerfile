# include meavn jdk1.8
FROM centos:7
ARG GIT_URL
ENV WORK_DIR="/home/project/workspace" PROJECT_NAME="project.jar"
WORKDIR /home/project/git/
RUN yum -y update
RUN yum -y install maven
RUN yum -y install java-1.8.0-openjdk.x86_64
RUN yum -y install git
RUN git clone $GIT_URL project
RUN cd project & source /etc/profile
WORKDIR /home/project/git/project
VOLUME ~/.m2/repository/ 
RUN mvn install
RUN cp ./target/**.jar $WORK_DIR/$PROJECT_NAME
WORKDIR $WORK_DIR
COPY application.properties $WORK_DIR
RUN nohup java --add-modules java.xml.bind -jar -Dfile.encoding=UTF-8 -Dspring.config.location=./application.properties ./$PROJECT_NAME > ./log.txt

EXPOSE 80
