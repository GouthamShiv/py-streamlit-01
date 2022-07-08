docker buildx build --push \
     --tag webstash.jfrog.io/webstash-docker/stock-price:latest \
     --tag webstash.jfrog.io/webstash-docker/stock-price:0.1 \
     --platform linux/arm64,linux/amd64 .
