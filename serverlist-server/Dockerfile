FROM gcr.io/distroless/java21
ADD target/BedrockConnect-1.0-SNAPSHOT.jar /docker/brc
WORKDIR /docker/brc
EXPOSE 19132/udp

ADD entrypoint.sh /docker/entrypoint.sh
RUN chmod +x /docker/entrypoint.sh

ENTRYPOINT ["/docker/entrypoint.sh"]
