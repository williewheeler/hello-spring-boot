FROM openjdk:8-jre

ENV APP_NAME hello-spring-boot
ENV APP_HOME /app/bin
ENV APP_CONFIG /config

VOLUME [ "${APP_CONFIG}" ]
EXPOSE 8080

RUN mkdir -p ${APP_HOME}
WORKDIR ${APP_HOME}
COPY ./target/${APP_NAME}-*.jar ./${APP_NAME}.jar
COPY ./docker/start-app.sh .

ENTRYPOINT [ "./start-app.sh" ]
