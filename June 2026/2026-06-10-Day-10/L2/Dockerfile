FROM ubuntu:22.04 
WORKDIR /opt/pathnex/devops-project 
COPY . /opt/pathnex/devops-project/
CMD ["ls", "-l", "."]




FROM ubuntu:22.04
WORKDIR /opt/pathnex/devops-project
COPY . /opt/pathnex/devops-project/
RUN apt-get update && apt-get install -y curl 
RUN curl --version
CMD ["ls", "-l", "."]


FROM ubuntu:22.04
WORKDIR /opt/pathnex/devops-project 
COPY . /opt/pathnex/devops-project/
RUN apt-get update && apt-get install -y git 
RUN git --version 
CMD [ "echo", "Pathnex DevOps Ready" ]

# task 4 - final boss 
FROM ubuntu:22.04 
WORKDIR /opt/pathnex/devops-project 
COPY . /opt/pathnex/devops-project/
RUN apt-get update && apt-get install -y curl
RUN curl --version 
RUN apt-get update && apt-get install -y git 
RUN git --version 
ENV APP_ENV=production
CMD ["echo", "Pathnex is Live on $APP_ENV"]























