FROM eclipse-temurin:21-jdk
EXPOSE 8080
COPY target/springboot-kubernet-demo.jar springboot-kubernet-demo.jar
ENTRYPOINT ["java","-jar","/springboot-kubernet-demo.jar"]