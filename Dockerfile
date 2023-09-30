# syntax=docker/dockerfile:1
FROM busybox:latest
LABEL org.opencontainers.image.source=https://github.com/noguchi/imagebuild
LABEL org.opencontainers.image.description="test container image"
LABEL org.opencontainers.image.licenses=MIT
COPY --chmod=755 <<EOF /app/run.sh
#!/bin/sh
while true; do
  echo -ne "The time is now $(date +%T)\\r"
  sleep 1
done
EOF

ENTRYPOINT /app/run.sh
