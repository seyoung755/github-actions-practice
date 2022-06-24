FROM adoptopenjdk/openjdk11
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENV MYSQL_DATABASE=jdbc:mysql://3.39.231.175:3306/actions
ENV MYSQL_USER_PASSWORD=elql1004
ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-jar","/app.jar"]
