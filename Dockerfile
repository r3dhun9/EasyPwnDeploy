FROM redhung/pwn-ctf-docker:latest

MAINTAINER Redhung <redhung@hung.red>

WORKDIR /

COPY ctf-pwn /home/ctf-pwn

COPY ctf /etc/xinetd.d/

RUN sh -c "useradd pwn"
