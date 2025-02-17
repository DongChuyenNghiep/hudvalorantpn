# Sử dụng Node.js làm base image
FROM node:18

# Thiết lập thư mục làm việc
WORKDIR /app

# Copy file package.json và package-lock.json trước
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Copy toàn bộ mã nguồn
COPY . .

# Mở cổng phù hợp với docker-compose.yml
EXPOSE 5100 5101 5200

# Chạy ứng dụng
CMD ["npm", "start"]