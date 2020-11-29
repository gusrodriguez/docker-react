#Build
FROM node:alpine AS builder
WORKDIR '/app'
COPY . .
RUN npm run build

#Run
FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html

