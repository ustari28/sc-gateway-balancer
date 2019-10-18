FROM openjdk:8-jre-slim as openjdk
COPY . /home/app/sc-gateway-balancer
WORKDIR /home/app/sc-gateway-balancer
COPY target/sc-gateway-balancer-*.jar sc-gateway-balancer-RELEASE.jar
RUN chmod 700 sc-gateway-balancer-RELEASE.jar
EXPOSE 8761
ENTRYPOINT ["java", "-jar", "-Dfile.encoding=UTF-8", "sc-gateway-balancer-RELEASE.jar"]