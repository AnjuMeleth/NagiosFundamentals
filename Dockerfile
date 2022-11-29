FROM ubuntu:22.04 
RUN apt-get update && \ 
  apt-get -y install curl && \ 
  curl https://raw.githubusercontent.com/AnjuMeleth/NagiosFundamentals/main/install.sh | sh
 

