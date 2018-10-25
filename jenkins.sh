#!/bin/sh

su --login $USERNAME -c "docker run -d --name smeup-jenkins --restart unless-stopped -p 8080:8080 -v jenkins-data:/var/jenkins_home jenkinsci/blueocean"
