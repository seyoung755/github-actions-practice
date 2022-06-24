FROM adoptopenjdk/openjdk11
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ARG MYSQL_DATABASE
ARG MYSQL_USER_PASSWORD
ENV MYSQL_DATABASE=${MYSQL_DATABASE}
ENV MYSQL_USER_PASSWORD=${MYSQL_USER_PASSWORD}
ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-jar","/app.jar"]
