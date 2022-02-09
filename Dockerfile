# syntax=docker/dockerfile:1.3.0-labs
FROM eclipse-temurin:17.0.2_8-jdk-focal as builder

COPY ProcessUser.java .
RUN javac ProcessUser.java
RUN java -Djdk.lang.Process.launchMechanism=vfork ProcessUser > /tmp/output.txt

FROM scratch
COPY --from=builder /tmp/output.txt .
