FROM anapsix/alpine-java
WORKDIR /data/git/spring-petclinic
RUN mvn clean install -DskipTests
RUN ./mvnw package -DskipTests
RUN mkdir -p /app
COPY /data/git/spring-petclinic/target/spring-petclinic-1.5.1.jar /app/spring-petclinic-1.5.1.jar 
CMD ["java","-jar","/app/spring-petclinic-1.5.1.jar"]

