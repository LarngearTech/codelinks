FROM phusion/baseimage

RUN export DEBIAN_FRONTEND=noninteractive
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get update && apt-get install --no-install-recommends -y nodejs git vim

RUN mkdir /home/docker && \
  groupadd -r docker -g 433 && \
  useradd -u 431 -r -g docker -d /home/docker -c "Docker image user" docker && \
  chown -R docker:docker /home/docker

RUN echo prefix = /home/docker/.node >> /home/docker/.npmrc
RUN echo "export PATH=\$PATH:/home/docker/.node/bin" >> /home/docker/.bashrc
RUN echo "export NODE_PATH=\$NODE_PATH:/home/docker/.node/lib/node_modules" >> /home/docker/.bashrc
RUN su - docker -c "source /home/docker/.bashrc && npm install -g yo grunt-cli bower generator-meanjs"

WORKDIR /codelinks
