# Docker image for Jenkins Enterprise by CloudBees master

FROM kmadel/jenkins-base:1.0
MAINTAINER Kurt Madel <kmadel@cloudbees.com>
RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-transport-https
    
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Download jenkins.war
USER jenkins
WORKDIR /usr/lib/jenkins
<<<<<<< HEAD
RUN curl -L -O "http://nectar-downloads.cloudbees.com/jenkins-enterprise/1.580/war/1.580.13.1/jenkins.war"
=======
RUN curl -L -O -w "Downloaded: %{url_effective}\\n" "http://nectar-downloads.cloudbees.com/cje/1.609/war/1.609.1.1/jenkins.war"
>>>>>>> kmadel/master

EXPOSE 8080 22
ENV JENKINS_HOME /var/lib/jenkins

USER root
CMD ["/usr/bin/supervisord"]