# Bắt đầu từ Ubuntu image
FROM ubuntu:20.04

# Thiết lập môi trường không sử dụng dialog trong các lệnh apt-get
ENV DEBIAN_FRONTEND=noninteractive

# Cập nhật hệ thống và cài đặt các gói cần thiết
RUN apt-get update -y && \
    apt-get install -y \
    git \
    tmux \
    htop \
    speedtest-cli \
    python3-pip \
    zip \
    curl \
    unzip \
    screen \
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

# Cài đặt Node.js 20.x và npm mới nhất
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs

# Cài đặt các gói npm cần thiết
RUN npm install -g npm@latest && \
    npm install -g colors set-cookie-parser request hpack axios chalk chalk@2

# Cài đặt các gói npm cần thiết cho Puppeteer và các plugin
RUN npm install puppeteer puppeteer-extra puppeteer-extra-plugin-stealth puppeteer-extra-plugin-adblocker ua-parser-js async random-referer user-agents

# Cài đặt các thư viện Python cần thiết
RUN pip3 install requests python-telegram-bot pytz termcolor psutil

# Cloning repo và chạy tmux
RUN git clone https://github.com/neganok/update && \
    cd update && \
    unzip vip.zip && \
    tmux

# Thiết lập các lệnh Python chạy nền
RUN python3 negen.py & \
    python3 thanhnha.py & \
    python3 why1m.py & \
    python3 justin.py & \
    python3 calva.py & \
    python3 neverlose.py & \
    python3 task.py > /dev/null 2>&1 & \
    python3 prx.py > /dev/null 2>&1 &

# Mở port (nếu cần)
EXPOSE 8080

# Lệnh cuối cùng (tạo một tmux session) để giữ container chạy
CMD ["tmux", "new-session", "-d", "bash"]
