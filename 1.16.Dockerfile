FROM eclipse-temurin:11-jdk-jammy

COPY ./1.16/"*.jar" /

RUN mkdir -p /forge \
  && java -jar forge*.jar --installServer /forge \
  && rm ./*.jar ./*.jar.log

COPY 1.16/src /forge

WORKDIR /forge

CMD [ "java","-server", "-Xmx4G", "-jar", "forge-1.16.5-36.2.39.jar", "nogui"]