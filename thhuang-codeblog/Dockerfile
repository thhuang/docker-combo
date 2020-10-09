FROM cirrusci/flutter:1.20.2 as builder
LABEL maintainer="tzhsn.huang@gmail.com"

WORKDIR /app
RUN sudo chown -R cirrus:cirrus /app
RUN git clone --progress https://github.com/thhuang/CodeBlog.git /app
RUN git reset --hard 209f448c5f7e94a4b9f00a2087480ce8480ff9e0
RUN flutter config --enable-web && flutter pub get && flutter build web

FROM nginx
COPY --from=builder /app/build/web /usr/share/nginx/html