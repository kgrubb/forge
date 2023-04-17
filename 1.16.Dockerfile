FROM eclipse-temurin:11-jdk-alpine

COPY ./1.16/"*.jar" /

RUN mkdir -p /forge \
  && java -jar forge*.jar --installServer /forge \
  && rm ./*.jar ./*.jar.log

COPY 1.16/src /forge

WORKDIR /forge

CMD [ "./run.sh"]