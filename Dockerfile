# Dockerfile - versión mínima para arreglar libfreetype
FROM openjdk:17-jdk-slim

WORKDIR /app

# instalar dependencias del sistema necesarias por AWT/Swing
RUN apt-get update && apt-get install -y --no-install-recommends \
    libfreetype6 \
    libxrender1 \
    libxext6 \
    libx11-6 \
    libfontconfig1 \
    fonts-dejavu-core \
    libasound2 \
    && rm -rf /var/lib/apt/lists/*

# copiar jar y dependencias
COPY dist/SistemaDeventas1.jar /app/SistemaDeventas1.jar
COPY dist/lib /app/lib

# Puerto (si la app usara alguno)
EXPOSE 8080

CMD ["java", "-jar", "/app/SistemaDeventas1.jar"]
