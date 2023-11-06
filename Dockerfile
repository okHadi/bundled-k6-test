FROM loadimpact/k6
COPY . /test
WORKDIR /test
RUN chmod +x /entrypoint.sh
CMD ["sh", "-c", "K6_STATSD_ADDR=localhost:8125", "K6_STATSD_ENABLE_TAGS=true", "./entrypoint.sh"]