

FROM debian:latest 

MAINTAINER Jukoo <funscript@outlook.fr> 

RUN apt-get update  -y \ 
&& apt-get install git  vim curl ctags wget  -y \ 
&& apt-get autoclean  

ADD  . /veti/ 

WORKDIR  veti/ 
 
RUN sed  -i  s/disabled/enabled/g  veti 
