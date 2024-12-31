<div align="center">

# Linux Fundamentals Command

</div>

# File System Navigation

`List the contents of the home directory:`
``` bash
ls ~
```
`Here:` ~ (Tilde) – This is a shortcut representing the home directory of the currently logged-in user.`

`screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/ls.png)

`Change the current directory to /var/log and list its contents:`
``` bash
cd /var/log
ls
```

`screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/change-dir.png)

`Find and display the path to the bash executable using the which command:`
``` bash
which bash
```

`screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/bash.png)

`Find current shell:`
``` bash
echo $SHELL
```
`screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/shell.png)

# File and Directory Operations

`Create a directory named linux_fundamentals in your home directory:`
``` bash
mkdir ~/linux_fundamentals
```

`Inside linux_fundamentals, create a subdirectory named scripts:`
``` bash
cd ~/linux_fundamentals
mkdir scripts
```

`screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/script.png)

`Create an empty file named example.txt inside the linux_fundamentals directory:`
``` bash
touch example.txt
```

`Copy example.txt to the scripts directory:`
``` bash
cp example.txt scripts/
```

`Move example.txt from linux_fundamentals to linux_fundamentals/backup:`
``` bash
mkdir backup
```
`Here:` First create the backup directory. Then:
``` bash
mv example.txt backup/
```

# Permissions
`Change the permissions of example.txt to read and write for the owner, and read-only for the group and others:`
``` bash
chmod 644 backup/example.txt
```

`Verify the permission changes using ls -l:`
``` bash
ls -l backup/example.txt
```

`screenshort`

![screenshort](/prosenjit_ICDB3_231/screenshort/permission.png)

# File Modification
`Create a file named example.txt in your home directory:`
``` bash
touch ~/example.txt
```

`Changing the owner to student and group to students & verify:`
``` bash
sudo useradd student
sudo groupadd students
sudo chown student:students ~/example.txt
ls -l ~/example.txt
```

`screenshort`

![screenshort](/prosenjit_ICDB3_231/screenshort/chown.png)

# Ownership
`Create a directory named project in your home directory:`
``` bash
mkdir ~/project
```

`Create a file named report.txt inside the project directory:`
``` bash
touch ~/project/report.txt
```

`Set the permissions to the file:`
``` bash
chmod 644 ~/project/report.txt
```

`Set the permission to the project directory:`
``` bash
chmod 755 ~/project
```

`Verifying the Changes:`
``` bash
ls -ld ~/project
ls -l ~/project/report.txt
```

`Screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/ownership.png)

# User add/modify
`Creating new user with customize home directory & shell:`
``` bash
sudo useradd -m -d /home/developer_home -s /bin/sh developer
```

`Verifying the new user's information:`
``` bash
getent passwd developer
```

`Screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/usermod.png)

`Changing the username & Adding the group name also Setting password:`
``` bash
sudo usermod -l devuser developer
sudo usermod -aG devgroup devuser
echo -e "devpass\ndevpass" | sudo passwd devuser
```

`Verifying the Changes:`
``` bash
getent passwd devuser
```

`Screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/new.png)


# Hard/Soft Link
`Create a file named original.txt in your home directory:`
``` bash
touch ~/original.txt
```

`Create a symbolic link named softlink.txt pointing to original.txt`
``` bash
ln -s ~/original.txt ~/softlink.txt
```

`Verifying the symbolic link:`
``` bash
ls -l ~/softlink.txt
```

`Screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/new-1.png)

`Deleting the original file and observe the status:`
``` bash
rm ~/original.txt
ls -l ~/softlink.txt
```

`Screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/new-2.png)

`Creating datafile.txt in your home:`
``` bash
touch ~/datafile.txt
```

`Creating hardlink and verify the status:`
``` bash
ln ~/datafile.txt ~/hardlink.txt
ls -l ~/hardlink.txt
```

`Screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/new-3.png)

`"Checking the inode of datafile & hardlink file:`
``` bash
ls -i ~/datafile.txt ~/hardlink.txt
```

`Screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/inode.png)

`Deleting the datafile and observe the status:`
``` bash
rm ~/datafile.txt
ls -l ~/hardlink.txt
```

`Screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/status.png)

`Finding all .txt files in your home directory:`
``` bash
find ~ -name "*.txt"
```

`Screenshort`

![screenshort](/prosenjit_ICDB3_231/screenshort/find.png)

# Package installation

`Updating repo:`
``` bash
sudo apt-get update
```

`Screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/update.png)

`Installing tree package:`
``` bash
sudo apt install tree -y
```

`Screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/tree.png)

`Installing gcloud CLI:`
`Add Google Cloud SDK repository:`
``` bash
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
```
`Download and save the public key securely:`
``` bash
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /usr/share/keyrings/cloud.google.gpg > /dev/null
```
`Update package lists and install gcloud CLI:`
``` bash
sudo apt-get update && sudo apt install google-cloud-sdk -y
```


# Added all the cmd in sh file and the ouptut given below:

`Screenshort:`

![screenshort](/prosenjit_ICDB3_231/screenshort/project.png)
![screenshort](/prosenjit_ICDB3_231/screenshort/project-1.png)