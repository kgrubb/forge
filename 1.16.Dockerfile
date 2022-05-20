FROM eclipse-temurin:11-jdk-focal

ENV INSTALLER="forge-1.16.5-36.2.35-installer.jar"

COPY ./1.16/"$INSTALLER" /

RUN mkdir -p /forge \
  && java -jar "$INSTALLER" --installServer /forge \
  && rm "$INSTALLER" "$INSTALLER".log

COPY 1.16/src /forge

WORKDIR /forge

CMD [ "java","-server", "-Xmx4G", "-jar", "forge-1.16.5-36.2.35.jar", "nogui"]