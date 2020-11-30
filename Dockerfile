#Build
FROM node:12-alpine

WORKDIR '/app'
COPY . .
RUN npm run build

#Run
FROM nginx
EXPOSE 80
COPY --from=0 /app/build /usr/share/nginx/html
