FROM eclipse-temurin:17-jdk-focal

ENV INSTALLER="forge-1.18.1-39.0.5-installer.jar"

COPY ./1.18/"$INSTALLER" /

RUN mkdir -p /forge \
  && java -jar "$INSTALLER" --installServer /forge \
  && rm "$INSTALLER" "$INSTALLER".log

COPY 1.18/src /forge

WORKDIR /forge

CMD [ "./run.sh"]