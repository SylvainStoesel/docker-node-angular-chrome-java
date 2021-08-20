FROM debian:stable-slim

# Install Node.js / npm
RUN apt-get update -qq
RUN apt-get install -yy apt-utils wget curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
	apt-get update -qq && apt-get install -y nodejs && \
  npm i -g npm@6

RUN node -v
RUN npm -v

# Install Chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
  echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
  apt-get update && \
  apt-get install -y google-chrome-stable xvfb

RUN google-chrome-stable -version

# Install OpenJDK-11
RUN apt-get update && \
    apt-get install -y openjdk-11-jre-headless && \
    apt-get clean;

RUN java -version

RUN apt clean
RUN rm -rf /var/lib/apt/lists/*
