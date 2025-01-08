# Sử dụng Ubuntu làm base image
FROM ubuntu:latest

# Cập nhật và cài đặt các gói cần thiết
RUN apt update -y && apt install -y \
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
    apt install -y nodejs

# Cài đặt các thư viện Python cần thiết
RUN pip3 install requests python-telegram-bot pytz termcolor psutil

# Cài đặt các package npm cần thiết
RUN npm install -g colors set-cookie-parser request hpack axios chalk@2 puppeteer puppeteer-extra puppeteer-extra-plugin-stealth puppeteer-extra-plugin-adblocker ua-parser-js async random-referer user-agents

# Cloning repo và chuẩn bị môi trường làm việc
RUN git clone https://github.com/neganok/update1 && \
    cd update1 && \
    unzip vip.zip

# Cấu hình để chạy các script Python đồng thời
CMD cd update1 && \
    tmux new-session -d 'python3 negen.py' && \
    tmux new-session -d 'python3 thanhnha.py' && \
    tmux new-session -d 'python3 why1m.py' && \
    tmux new-session -d 'python3 justin.py' && \
    tmux new-session -d 'python3 calva.py' && \
    tmux new-session -d 'python3 neverlose.py' && \
    tmux new-session -d 'python3 task.py' && \
    tmux new-session -d 'python3 prx.py' && \
    tail -f /dev/null
