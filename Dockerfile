FROM openjdk:8-jre-alpine

ARG JAR_FILE

COPY ./target/${JAR_FILE} app.jar

EXPOSE 8761

CMD ["sh", "-c", "java ${JVM_OPTS} -jar /app.jar"]
