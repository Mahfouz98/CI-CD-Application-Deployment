FROM adoptopenjdk/openjdk11

EXPOSE 8080

ENV APP_HOME /usr/src/app

# Change the COPY source path to 'artifacts/' instead of 'target/'
COPY artifacts/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]