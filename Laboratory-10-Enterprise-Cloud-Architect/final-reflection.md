
# Final Reflection: Enterprise Cloud Architect

## Introduction
In this CCM101 laboratory activity, I deployed a secure multi-tier website using WordPress and MariaDB. I used Ubuntu Server inside Oracle VirtualBox and Docker Compose to run the application and database containers.

## What I Learned
I learned how to set up an Ubuntu Server virtual machine, install and use Docker, and deploy WordPress with a MariaDB database. I also learned how Docker Compose manages multiple services and how named volumes help preserve website files and database data.

## Security Implementation
I configured the UFW firewall to allow the required ports for SSH and website access. I also checked that the MariaDB database port, 3306, was not published to the host, keeping database access within the Docker network.

## Backup and Maintenance
I practiced checking container status, stopping and starting services, and listing Docker volumes. I also created and verified a WordPress files backup archive and prepared a Bash script for MariaDB database backups.

## Challenges and Solutions
One challenge was following the terminal commands and configuring the project files correctly. I addressed these challenges by checking command outputs, reviewing the Docker Compose configuration, and testing the website and containers after restarting the services.

## Conclusion
This laboratory helped me understand the basic deployment, security, persistence, and backup practices used in a containerized web application. I learned the importance of following instructions carefully, verifying each step, and protecting configuration files that contain passwords.


