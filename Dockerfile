FROM dockerfile/nodejs
MAINTAINER Timo Derstappen <timo@giantswarm.io>

RUN npm install -g hubot coffee-script
RUN hubot --create /hubot
RUN cd /hubot && npm install hubot-irc --save && npm install

WORKDIR /hubot
ENTRYPOINT ["bin/hubot", "--adapter", "irc"]
