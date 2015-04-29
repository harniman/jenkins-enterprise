# Docker image for Jenkins Enterprise by CloudBees master

FROM apemberton/jenkins-base
MAINTAINER Andy Pemberton <apemberton@cloudbees.com>

# Download jenkins.war
USER jenkins
WORKDIR /usr/lib/jenkins
RUN curl -L -O "http://nectar-downloads.cloudbees.com/jenkins-enterprise/1.580/war/1.580.13.1/jenkins.war"

EXPOSE 8080 22
ENV JENKINS_HOME /var/lib/jenkins

ENTRYPOINT ["java", "-jar", "jenkins.war", "--httpPort=8080"]
CMD ["--prefix=/jenkins"]

# CMD ["java", "-jar", "jenkins.war", "--httpPort=8080", "--prefix=/jenkins"]