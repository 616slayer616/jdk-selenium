FROM gradle:jdk11
USER root

# Install Chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install

#Install Firefox
RUN apt-get update && \
        apt-get install -y firefox && \
        apt-get clean
