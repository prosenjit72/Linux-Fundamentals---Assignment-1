#!/bin/bash
# File System Navigation
echo "Listing contents of home directory...."
ls ~

echo "Changing to /var/log and list it's contents...."
cd /var/log
ls

echo "Finding the bash executable path...."
which bash

echo "Finding current shell...."
echo $SHELL

# File and Directory Operations Part
echo "Creating linux_fundamentals directory in home...."
mkdir ~/linux_fundamentals

cd ~/linux_fundamentals

echo "Creating scripts Subdirectory...."
mkdir scripts

echo " Creating an empty file example.txt"
touch example.txt

echo "Coyping example.txt file to scripts dirctory...."
cp example.txt scripts/

mkdir backup

echo "Moving example.txt file to backup directory...."
mv example.txt backup/

# Permission
echo "Changing the permission of example.txt"
chmod 644 backup/example.txt

echo "Verifying the permission...."
ls -l backup/example.txt

# File Modificantion
echo "Creating example.txt in my home...."
touch ~/example.txt

sudo useradd student
sudo groupadd students

echo "Changing the owner to student and group to students...."
sudo chown student:students ~/example.txt

echo "Verifying the the modification...."
ls -l ~/example.txt

# Ownership
echo "Creating the project directory to home...."
mkdir ~/project

echo "Creating report.txt inside the project directory...."
touch ~/project/report.txt

echo "Setting up the custome file permission to the file...."
chmod 644 ~/project/report.txt

echo "Setting up the project directory custome permission...."
chmod 755 ~/project

echo "Verifying the report.txt file permission...."
ls -l ~/project/report.txt

echo "Verifying the project directory permission...."
ls -ld ~/project

echo "Creating new user with customize home directory & shell...."
sudo useradd -m -d /home/developer_home -s /bin/sh developer

echo "Verifying the new user's information...."
getent passwd developer

echo "Changing the username...."
sudo usermod -l devuser developer

echo "Adding the group name...."
sudo usermod -aG devgroup devuser

echo "Setting password for devuser...."
echo -e "devpass\ndevpass" | sudo passwd devuser

echo "Verifying the Changes...."
getent passwd devuser

# Hard/Soft Link
echo "Creating original.txt file to your home...."
touch ~/original.txt

echo "Creating symbolic link...."
ln -s ~/original.txt ~/softlink.txt

echo "Verifying the symbolic link...."
ls -l ~/softlink.txt

echo "Deleting the original file and observe the status..."
rm ~/original.txt
ls -l ~/softlink.txt

echo "Creating datafile.txt in your home...."
touch ~/datafile.txt

echo "Creating hardlink...."
ln ~/datafile.txt ~/hardlink.txt

echo "Verifying the hard link and it's points...."
ls -l ~/hardlink.txt

echo "Checking the inode of datafile & hardlink file...."
ls -i ~/datafile.txt ~/hardlink.txt

echo "Deleting the datafile and observe the status...."
rm ~/datafile.txt
ls -l ~/hardlink.txt

echo "Finding all .txt files in your home directory...."
find ~ -name "*.txt"

# Package installation

echo "Updating repo...."
sudo apt-get update

echo "Installing tree package...."
sudo apt install tree -y

echo "Installing gcloud CLI:...."
# Add Google Cloud SDK repository
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Download and save the public key securely

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /usr/share/keyrings/cloud.google.gpg > /dev/null
# Update package lists and install gcloud CLI
sudo apt-get update && sudo apt install google-cloud-sdk -y

