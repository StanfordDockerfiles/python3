FROM nathankw/centos6_essentials
LABEL maintainer "Nathaniel Watson nathankw@stanford.edu"

#Folders /srv/src and /srv/software were created in the base image.

#INSTALL Python 3.7.2
RUN curl -O  https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tgz \
	&& tar -zxf Python-3.7.2.tgz \
	&& rm Python-3.7.2.tgz \
	&& cd Python-3.7.2 \
	&& ./configure \
	&& make \
	&& make install 
#comes with pip3.
