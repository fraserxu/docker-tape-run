FROM node:4-onbuild
MAINTAINER Fraser Xu <xvfeng123@gmail.com>

# Install xvfb
RUN apt-get update &&\
    apt-get install -y libgtk2.0-0 libgconf-2-4 \
        libasound2 libxtst6 libxss1 libnss3 xvfb

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY package.json /usr/src/app
ONBUILD RUN npm install
ONBUILD COPY . /usr/src/app

# Start xvfb
Xvfb -ac -screen scrn 1280x2000x24 :9.0 &
export DISPLAY=:9.0

CMD [ "npm", "test" ]
