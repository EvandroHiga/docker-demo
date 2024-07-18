FROM amazoncorretto:17-alpine3.19-jdk

COPY . /usr/src/docker-demo
WORKDIR /usr/src/docker-demo

ARG APP_NAME=docker-demo
ARG APP_VERSION=1.5
ARG EXPOSED_TCP_PORT=8080
ENV APP_NAME_VERSION=${APP_NAME}-${APP_VERSION}
ENV MY_NAME=Carlos_Evandro_Higa

EXPOSE ${EXPOSED_TCP_PORT}
RUN ./mvnw clean package

CMD java -jar target/${APP_NAME_VERSION}.jar