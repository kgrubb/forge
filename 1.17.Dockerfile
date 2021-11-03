FROM eclipse-temurin:16-jdk-focal

ENV INSTALLER="forge-1.17.1-37.0.104-installer.jar"

COPY ./1.17/"$INSTALLER" /

RUN mkdir -p /forge \
  && java -jar "$INSTALLER" --installServer /forge \
  && rm "$INSTALLER" "$INSTALLER".log

COPY 1.17/src /forge

WORKDIR /forge

CMD [ "./run.sh"]