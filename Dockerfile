FROM maven:3.6.0-jdk-11-slim
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean package
CMD ["java","-jar","/usr/src/app/target/jb-hello-world-maven-0.1.0.jar"]

