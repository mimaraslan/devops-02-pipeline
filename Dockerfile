# Uygalanin calismasi için JDK lazim
FROM openjdk:17

# projenin jar dosyasi nerede?
ARG JAR_FILE=target/*.jar

# projenin jar halini docker icine kopyala
COPY ${JAR_FILE} devops-hello-app.jar

# terminalden clistirma istedigimiz komutlar varsa
CMD apt-get update
CMD apt-get upgrade -y

# uygulamalarin ic portunu sabitle
EXPOSE 8080

# uygulamayi Java komutla calistir
ENTRYPOINT ["java", "-jar", "devops-hello-app.jar"]
