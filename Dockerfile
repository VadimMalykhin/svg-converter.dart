# syntax=docker/dockerfile:1
FROM ubuntu:latest

WORKDIR /home

COPY --from=binary --chmod=0755 /svg-converter /usr/bin
COPY --chmod=0755 ./entrypoint /usr/local/bin/entrypoint

ENTRYPOINT ["/usr/local/bin/entrypoint"]
CMD ["/usr/bin/svg-converter"]