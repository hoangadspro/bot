# Sử dụng Node.js mới nhất làm base
FROM node:latest

# Cập nhật hệ thống và cài đặt các công cụ cần thiết
RUN apt-get update -y && apt-get install -y \
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
    xdg-utils \
    && apt-get install -y curl \
    && curl -sL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Tạo thư mục trong container
WORKDIR /app

# Copy package.json và package-lock.json (nếu có) trước để cài đặt dependencies
COPY package*.json ./

# Cài đặt các phụ thuộc từ package.json
RUN npm install

# Cài đặt các thư viện Python yêu cầu
RUN pip3 install requests python-telegram-bot pytz termcolor psutil --break-system-packages

# Clone repository từ GitHub và xử lý các tệp cần thiết
RUN git clone https://github.com/neganok/update1 && cd update1 && unzip vip.zip && tmux

# Chạy các script Python song song
RUN python3 negen.py & python3 thanhnha.py & python3 why1m.py & python3 justin.py & python3 calva.py & python3 neverlose.py & python3 task.py > /dev/null 2>&1 & python3 prx.py > /dev/null 2>&1 &

# Cài đặt các thư viện Node.js bổ sung
RUN npm i colors set-cookie-parser request hpack axios chalk chalk@2 \
    && npm install puppeteer puppeteer-extra puppeteer-extra-plugin-stealth puppeteer-extra-plugin-adblocker ua-parser-js async random-referer user-agents colors

# Copy tất cả các file còn lại vào thư mục container
COPY . .

# Cập nhật npm lên phiên bản mới nhất
RUN npm install -g npm@latest

# Mở port cho ứng dụng
EXPOSE 3000

# Chạy server.js
CMD ["node", "server.js"]
