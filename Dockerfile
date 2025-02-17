# Sử dụng Node.js phiên bản 18
FROM node:18

# Thiết lập thư mục làm việc
WORKDIR /app

# Copy file package.json và package-lock.json (nếu có)
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Copy toàn bộ mã nguồn
COPY . .

# Mở cổng 3000
EXPOSE 3000

# Chạy ứng dụng
CMD ["npm", "start"]
