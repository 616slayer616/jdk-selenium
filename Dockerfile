FROM mxml/jdk-scp

# Install Chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    dpkg -i google-chrome-stable_current_amd64.deb || true && \
    apt update && \
    apt install -fy && \
    dpkg -i google-chrome-stable_current_amd64.deb
