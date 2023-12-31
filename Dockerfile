FROM denoland/deno:alpine-1.38.3

WORKDIR /work

COPY . .

RUN apk add --no-cache \
        tzdata ffmpeg bash \
    && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
    && deno task cache

CMD ["deno", "task", "run"]