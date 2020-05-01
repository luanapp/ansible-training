FROM ansible/ansible:ubuntu1404

USER root
RUN apt-get update
RUN sudo apt-get -y install software-properties-common
RUN apt-add-repository --yes ppa:ansible/ansible
RUN apt-get update
RUN yes | apt-get install ansible

RUN mkdir /app

WORKDIR /app

ENTRYPOINT [""]
