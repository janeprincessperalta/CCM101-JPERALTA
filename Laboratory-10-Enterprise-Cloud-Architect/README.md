
# Enterprise Cloud Architect Operational Manual

## CCM101 – Secure Multi-Tier Cloud Website

### Project Overview
This project deploys a WordPress website and MariaDB database using Docker Compose on Ubuntu Server running in Oracle VirtualBox.

### System Architecture
- Windows host computer and web browser
- Oracle VirtualBox with Ubuntu Server
- Docker Engine and Docker Compose
- WordPress web application
- MariaDB database on a private Docker network
- Named Docker volumes for persistent storage

### Security
- UFW firewall configuration
- MariaDB port 3306 is not published to the host
- The `.env` file contains private configuration and must not be uploaded to GitHub

### Backup and Maintenance
- WordPress file backup
- Database backup and recovery
- Docker container and volume checks

### Required Files
- `README.md`
- `architecture-diagram.png`
- `docker-compose.yml`
- `backup.sh`
- `operational-manual.docx`
- `final-reflection.md`

**Course:** CCM101 Cloud Computing
