# Sử dụng Node.js phiên bản mới nhất
FROM node:18

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép package.json và package-lock.json
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Expose cổng mà ứng dụng chạy
EXPOSE 3000

# Chạy ứng dụng
CMD ["npm", "start"]
