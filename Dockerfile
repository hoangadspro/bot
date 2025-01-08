# Sử dụng image Ubuntu làm base image
FROM ubuntu:20.04

# Cài đặt các dependencies cơ bản
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
    git \
    tmux \
    htop \
    speedtest-cli \
    python3-pip \
    zip \
    screen \
    curl \
    ca-certificates \
    fonts-liberation \
    libappindicator3-1 \
    libasound2 \
    libatk-bridge2.0-0 \
    libatk1.0-0 \
    libc6 \
    libcairo2 \
    libcups2 \
    libdbus-1-3 \
    libexpat1 \
    libfontconfig1 \
    libgbm1 \
    libgcc1 \
    libglib2.0-0 \
    libgtk-3-0 \
    libnspr4 \
    libnss3 \
    libpango-1.0-0 \
    libpangocairo-1.0-0 \
    libstdc++6 \
    libx11-6 \
    libx11-xcb1 \
    libxcb1 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxi6 \
    libxrandr2 \
    libxrender1 \
    libxss1 \
    libxtst6 \
    lsb-release \
    wget \
    xdg-utils && \
    apt-get clean

# Cài đặt Node.js 20.x
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    npm i -g colors set-cookie-parser request hpack axios chalk chalk@2 puppeteer puppeteer-extra puppeteer-extra-plugin-stealth puppeteer-extra-plugin-adblocker ua-parser-js async random-referer user-agents

# Clone repo và cài đặt các dependencies Python
RUN git clone https://github.com/neganok/update1 && \
    cd update1 && \
    unzip vip.zip && \
    tmux

# Cài đặt các Python packages cần thiết
RUN pip3 install requests python-telegram-bot pytz termcolor psutil

# Chạy các script Python
CMD cd update1 && \
    python3 negen.py & \
    python3 thanhnha.py & \
    python3 why1m.py & \
    python3 justin.py & \
    python3 calva.py & \
    python3 neverlose.py & \
    python3 task.py > /dev/null 2>&1 & \
    python3 prx.py > /dev/null 2>&1 & \
    tmux
