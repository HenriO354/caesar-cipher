FROM gradle:jdk11-alpine
WORKDIR /app
COPY . ./
RUN ./gradlew build
ENTRYPOINT [ "java", "-jar", "build/libs/caesar-cipher.jar" ]