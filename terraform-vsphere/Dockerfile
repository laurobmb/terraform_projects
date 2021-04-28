FROM ubuntu:20.04
ENV VERSIONTERRAFORM='0.14.7'
ENV VERSIONGO='1.16'
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update &&\
    apt-get install -y git make curl zip golang

RUN curl -# -O https://releases.hashicorp.com/terraform/${VERSIONTERRAFORM}/terraform_${VERSIONTERRAFORM}_linux_amd64.zip &&\ 
    unzip terraform_${VERSIONTERRAFORM}_linux_amd64.zip &&\ 
    mv terraform /usr/local/bin

RUN git clone https://github.com/josenk/terraform-provider-esxi.git 

RUN mkdir esxi
COPY [ "instance.tf", "provider.tf", "terraform.tfvars", "vars.tf", "esxi/" ]
