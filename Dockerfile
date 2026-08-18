FROM maven:3.9-eclipse-temurin-17 AS build

WORKDIR /workspace

COPY customerservice/pom.xml ./
COPY customerservice/src ./src

RUN mvn -B clean package -DskipTests

FROM eclipse-temurin:17-jre

WORKDIR /app

RUN useradd --system --create-home --uid 1001 appuser
COPY --from=build /workspace/target/customerservice-*.jar app.jar

USER appuser

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "/app/app.jar"]