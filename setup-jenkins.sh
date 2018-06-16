# https://aws.amazon.com/getting-started/projects/setup-jenkins-build-server/
# https://d1.awsstatic.com/Projects/P5505030/aws-project_Jenkins-build-server.pdf
# tested on amazon linux
# linux must have access to internet

sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum remove java-1.7.0-openjdk -y
sudo yum install java-1.8.0-openjdk jenkins git -y
sudo service jenkins start
sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
sudo cat /var/lib/jenkins/secrets/initialAdminPassword