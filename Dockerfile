FROM amazoncorretto:17-alpine3.19-jdk

COPY . /usr/src/demo
WORKDIR /usr/src/demo

ARG APP_NAME=demo
ARG APP_VERSION=1.5
ARG EXPOSED_TCP_PORT=8080
ENV MY_NAME=Carlos_Evandro_Higa
ENV APP_NAME_VERSION=${APP_NAME}-${APP_VERSION}

EXPOSE ${EXPOSED_TCP_PORT}
RUN ./mvnw clean package

CMD java -jar target/${APP_NAME_VERSION}.jar