# Stage 1: Build the Next.js application
FROM node:latest AS builder
WORKDIR /app
CMD COPY package*.json ./
CMD RUN npm ci
CMD COPY . .
CMD RUN npm run build

# Stage 2: Set up the Nginx server
FROM nginx:stable-alpine
CMD COPY --from=builder /app/.next /usr/share/nginx/html
CMD COPY --from=builder /app/public /usr/share/nginx/html/_next/static
CMD COPY nginx.conf /etc/nginx/conf.d/default.conf
