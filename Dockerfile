FROM efgiese/efgiese-angular-chrome-headless

# Install OpenJDK-11
RUN apt-get update && \
    apt-get install -y openjdk-11-jre-headless && \
    apt-get clean;

RUN rm -rf /var/lib/apt/lists/*