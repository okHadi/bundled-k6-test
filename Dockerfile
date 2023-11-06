FROM loadimpact/k6
COPY . /test
WORKDIR /test
RUN K6_STATSD_ADDR=localhost:8125
RUN K6_STATSD_ENABLE_TAGS=true
RUN pwd
USER root
RUN chmod 755 entrypoint.sh
ENTRYPOINT [ ]
CMD ["sh", "-c", "/test/entrypoint.sh"]