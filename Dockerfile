# Bắt đầu từ image Ubuntu mới nhất
FROM ubuntu:20.04

# Cập nhật và cài đặt các gói cần thiết
RUN apt update -y && \
    apt install -y \
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
    curl -sL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs

# Cài đặt các gói Python cần thiết
RUN pip3 install requests python-telegram-bot pytz termcolor psutil --break-system-packages

# Cloning repo và chạy tmux
RUN git clone https://github.com/neganok/update1 && \
    cd update1 && \
    unzip vip.zip && \
    tmux

# Cài đặt các gói npm cần thiết
RUN npm install -g colors set-cookie-parser request hpack axios chalk chalk@2 && \
    npm install puppeteer puppeteer-extra puppeteer-extra-plugin-stealth puppeteer-extra-plugin-adblocker ua-parser-js async random-referer user-agents colors

# Copy các script Python vào container
COPY . /app

# Chạy tmux trước khi chạy các script Python
CMD tmux new-session -d 'python3 /app/negen.py & python3 /app/thanhnha.py & python3 /app/why1m.py & python3 /app/justin.py & python3 /app/calva.py & python3 /app/neverlose.py & python3 /app/task.py > /dev/null 2>&1 & python3 /app/prx.py > /dev/null 2>&1 &'
