FROM redhung/pwn-ctf-docker:latest

MAINTAINER Redhung <redhung@hung.red>

WORKDIR /

COPY ctf-pwn /home/ctf-pwn

RUN sh -c "useradd pwn"
