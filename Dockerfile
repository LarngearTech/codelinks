FROM phusion/baseimage

RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get update && apt-get install --no-install-recommends -y nodejs

ADD src/ /codelinks/
WORKDIR /codelinks
