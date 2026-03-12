FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/shift72/caddy-geo-ip

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
