# Directus + SSH Tunnel + MySQL (AWS RDS) Docker Setup

This project allows you to run Directus connected to a MySQL database on AWS RDS via an SSH tunnel, all inside Docker containers.


---

## Requirements

- Docker and Docker Compose
- Private SSH key to access the EC2 instance (for tunneling to RDS)
- Access to MySQL on AWS RDS

---

## Steps to Run

### 1. Fill in the `.env` file

Copy `.env.example` to `.env` and fill in the values:

```env
# Directus
KEY=your_super_secret_key
ADMIN_EMAIL=admin@example.com
ADMIN_PASSWORD=admin123

# MySQL (through the tunnel)
DB_CLIENT=mysql
DB_HOST=0.0.0.0
DB_PORT=3307
DB_DATABASE=your_db_name
DB_USER=your_rds_user
DB_PASSWORD=your_rds_password

# SSH tunnel
LOCAL_PORT=3307
RDS_HOST=your-rds-endpoint.rds.amazonaws.com
RDS_PORT=3306
EC2_USER=ec2-user
EC2_HOST=your-ec2-public-ip-or-hostname
```
### 2. Start Docker Compose

```bash
docker-compose up --build
```

### 3. Usage

- Directus will be available at: [http://localhost:8055](http://localhost:8055)
- Log in with the EMAIL and PASSWORD set in `.env`

---

Feel free to ask for help with configuration or deployment!

Author: Taras Lapytskyi
Year: 2025
