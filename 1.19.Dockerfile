FROM eclipse-temurin:17-jdk-jammy

COPY ./1.19/"*.jar" /

RUN mkdir -p /forge \
  && java -jar forge*.jar --installServer /forge \
  && rm ./*.jar ./*.jar.log

COPY 1.19/src /forge

WORKDIR /forge

CMD [ "./run.sh"]