# Image name on Dockerhub: anas1243/jenkins-with-docker
FROM jenkins/jenkins:lts
USER root
RUN apt-get update
RUN apt-get install ca-certificates curl gnupg
RUN install -m 0755 -d /etc/apt/keyrings
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
RUN chmod a+r /etc/apt/keyrings/docker.gpg
RUN echo "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | tee /etc/apt/sources.list.d/docker.list > /dev/nullRUN apt update
RUN apt-get update
RUN apt-get install -y docker-ce-cli python3 


# install AWSCLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip -u awscliv2.zip
RUN ./aws/install

# intall Ansible
RUN apt-get install -y python3-pip
RUN python3 -m pip install ansible