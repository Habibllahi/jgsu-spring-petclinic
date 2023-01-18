FROM eclipse-temurin:8-jdk

LABEL org.opencontainers.image.title="jgsu-spring-petclinic" \
      org.opencontainers.image.description="Web SSR server that allows pet management" \
      org.opencontainers.image.authors="@javabeanstack"

RUN mkdir -p usr/service

COPY ./target/spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar usr/service

WORKDIR usr/service

EXPOSE 8082

CMD ["java","-jar","./spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar"]



