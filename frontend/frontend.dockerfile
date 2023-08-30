FROM anapsix/alpine-java
WORKDIR /data/git/spring-petclinic
RUN mkdir -p /app
COPY target/spring-petclinic-3.1.0-SNAPSHOT.jar /app/spring-petclinic-3.1.0-SNAPSHOT.jar 
CMD ["java","-jar","/app/spring-petclinic-3.1.0-SNAPSHOT.jar"]

