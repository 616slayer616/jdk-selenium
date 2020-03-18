FROM openjdk:11
USER root
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get update && apt-get install -y --no-install-recommends \
		openssh-server \
		netcat-openbsd \
		git \
		nodejs \
	&& apt-get upgrade -y \
	&& rm -rf /var/lib/apt/lists/* /var/cache/apt
	
RUN ln -s "$(which nodejs)" /usr/local

# Install Chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    dpkg -i google-chrome-stable_current_amd64.deb || true && \
    apt update && \
    apt install -fy && \
    dpkg -i google-chrome-stable_current_amd64.deb
