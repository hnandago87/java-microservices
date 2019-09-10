FROM maven:3-jdk-12 as BUILDCONFIGSERVER
COPY src /usr/src/config/src
COPY pom.xml /usr/src/config
RUN mvn -f /usr/src/config/pom.xml clean package -DskipTests
FROM adoptopenjdk/openjdk12:latest
COPY --from=BUILDCONFIGSERVER /usr/src/config/target/*.jar /maven/
CMD java $JAVA_OPTS -jar maven/*.jar
