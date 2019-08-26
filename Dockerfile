FROM mxml/jdk-scp

# Install Chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install

#Install Firefox
RUN wget -O FirefoxSetup.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US" && \
	mkdir /opt/firefox && \
	tar xjf FirefoxSetup.tar.bz2 -C /opt/firefox/
	
ENV PATH="/opt/firefox:${PATH}"
