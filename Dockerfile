# First docker file
# Created with Perplexity 31.01.2026

FROM alpine:latest
RUN apk add --no-cache curl
RUN echo "Server starting..." > /log.txt && \
    echo "PID1 handles signals" >> /log.txt
EXPOSE 8080
VOLUME /data
CMD ["sh", "-c", "while true; do echo '$(date)' >> /log.txt; sleep 5; done"]

