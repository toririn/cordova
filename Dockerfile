FROM node
ENV LANG C.UTF-8
RUN npm update && npm install -g cordova
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get update && apt-get install -y google-chrome-stable vim
#RUN apt-get install -y default-jre default-jdk
CMD ["/bin/bash"]
