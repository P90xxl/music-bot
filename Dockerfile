FROM eclipse-temurin:17-jre

WORKDIR /app

# Download Lavalink
ADD https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar /app/Lavalink.jar

# Copy config + plugins
COPY application.yml /app/application.yml
COPY plugins /app/plugins

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
