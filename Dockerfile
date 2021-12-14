FROM maven:3.8.4-jdk-8-slim

COPY . /app
WORKDIR /app

# deploy-war is only used to preinstall packages - we don't use the war
RUN mvn clean package jetty:deploy-war

ENTRYPOINT mvn jetty:run
