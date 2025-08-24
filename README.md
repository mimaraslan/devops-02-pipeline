# DevOps Pipeline

## CI/CD Evreni

```

CI/CD:           (Jenkins, Git,  GitHub, GitOps,  GitHub Actions,    GitLab, GitLab CI,    Bitbucket, Bamboo)
Scripting        (Python, Bash, PowerShell)
Containers:      (Docker)
Orchestration:   (Kubernetes, Helm)
Cloud            (AWS, Azure, GCP)
Virtualization:  (VMware, VirtualBox)
IaC:             (Terraform, Ansible, CloudFormation)
Monitoring:      (Prometheus, Grafana, ELK)
```


### Jenkins enregrasyon aşamaları
```
Kod ---> GitHub    --->  Jenkins      --->  DockerHub  --->  Kubernetes
         GitLab           -Git              -image            -container   
         Bitbucket        -Java
                          -Python
                          -C#
                          -Maven
                          -Gradle
                          -Docker
                          -Kubernetes
```


### Jenkins'i indirmek
https://www.jenkins.io/download/


### Jenkins'i war dosyasından çalıştırmak
https://www.jenkins.io/doc/book/installing/war-file/

```
cd D:\DevOps

java -jar jenkins.war --httpPort=9999
```


###  Docker'a Terminalden Login olmak.
```
docker login -u           mimaraslan    -p          123456789

docker login --username   mimaraslan    --password  123456789

docker login -u           mimaraslan    --password  123456789

```


### Jar dosyasının Docker'a image olarak göndermek
```
docker build    --build-arg   JAR_FILE=target/devops-application.jar      --tag mimaraslan/devops-application:latest   .

docker build    --build-arg   JAR_FILE=target/devops-application.jar      -t mimaraslan/devops-application:latest   .

docker build    --tag mimaraslan/devops-application:latest   .

docker build  -t mimaraslan/devops-application:latest   .
```


### GitHub Token for DevOps
https://github.com/settings/tokens/new

### DockerHub Token for DevOps
https://app.docker.com/accounts/mimaraslan/settings/personal-access-tokens



###  DockerHub Token ile Terminalden login olmak
```
docker login -u mimaraslan     -p   dckr_pat_y9zp_9RxQEsjw-0DoInBz6_abc
```

### DockerHub Token ile Jenkins'ten login olmak
```
docker login -u mimaraslan     -p   ${DOCKER_HUB_TOKEN}
```

### Docker Image'ını DockerHub'a göndermek
```
docker push mimaraslan/devops-application:latest
```

### Windows
```
C:\Users\YOUR_USERNAME\.kube
```

### MACOS
```
cd  ~ ./kube
```

### minikube
```
minikube start

minikube dashboard

minikube serverice devops-application-service
```


