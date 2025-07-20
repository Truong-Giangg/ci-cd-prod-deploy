FROM jenkins/jenkins:lts

USER root
RUN apt-get update && apt-get install -y \
    docker.io \
    docker-compose \
    && rm -rf /var/lib/apt/lists/*

# Grant Jenkins permission to run Docker commands
RUN usermod -aG docker jenkins

USER jenkins

