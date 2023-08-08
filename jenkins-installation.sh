#################################################################################################
# Author : Ashutosh Bambal
# Date : 09/06/2023
# Description : This script is used to install Jenkins on ubuntu machine
# OS : Ubuntu & Distibution
# Version : V1 
##################################################################################################

# Update the system
echo "Updating the system..."
sudo apt-get update -y
echo "System updated sucessfully "
echo "--------------------------------------- "

# Installing the Java
echo "Installing Java..."
sudo apt install openjdk-17-jre -y
java -version
echo "Java Installation Complited"
echo "--------------------------------------- "

# Installing the necessary keys and files from Jenkins official website
echo "Installing the necessary keys and files..."
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
echo "keys & files added "
echo "--------------------------------------- "

# Again, updating and installing Jenkins
echo "updating and installing Jenkins..."
sudo apt-get update -y
sudo apt-get install jenkins -y
echo "--------------------------------------- "

# Enable and start the Jenkins
echo "Enabling jenkins..."
sudo systemctl enable jenkins
sudo systemctl start jenkins
echo "Jenkins is enabled and starts successfully."

# Use below password to get login in on your jenkins url
echo "Use below password to get login in on your jenkins url"
echo "#####################################################################"
echo "Jenkins Server Initial Password: "
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "#####################################################################"


