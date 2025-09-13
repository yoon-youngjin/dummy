FROM openjdk:21-jdk-slim AS builder
WORKDIR /dummy

COPY build/libs/*.jar app.jar
RUN mkdir -p build/extract

WORKDIR /dummy/build/extract
RUN java -Djarmode=layertools -jar /dummy/app.jar extract

FROM openjdk:21-jdk-slim
COPY --from=builder /dummy/build/extract/dependencies/ /dummy
COPY --from=builder /dummy/build/extract/spring-boot-loader/ /dummy
COPY --from=builder /dummy/build/extract/snapshot-dependencies/ /dummy
COPY --from=builder /dummy/build/extract/application/ /dummy

WORKDIR /dummy
ENTRYPOINT ["java", "org.springframework.boot.loader.launch.JarLauncher"]
