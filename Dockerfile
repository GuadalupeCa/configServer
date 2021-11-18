FROM openjdk:11
WORKDIR /configServer
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
COPY src ./src
EXPOSE 8888
CMD ["./mvnw", "spring-boot:run"]