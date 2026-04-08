# Fullstack Template: React + Node.js + MySQL

This is a template for a simple fullstack web application using React for the frontend, Node.js with Express for the backend, and MySQL for the database. It displays a "Hello, World" message fetched from the database.

## Project Structure

- `backend/` - Node.js Express server
- `frontend/` - React application
- `database/` - MySQL setup scripts

## Prerequisites

- Node.js (v14 or higher)
- MySQL (running locally)
- npm or yarn

## Running the Application

All commands should be run from the **root directory** of the project.

### Quick Start (Recommended)

```bash
# Install all dependencies
npm run install-all

# Set up the database (requires MySQL to be running)
npm run setup-db

# Start both backend and frontend servers
npm run dev
```

### Manual Setup and Run

1. **Install dependencies:**

   ```bash
   npm run install-all
   ```

2. **Set up the database:**
   - Ensure MySQL is running locally
   - Run: `npm run setup-db`
   - Or manually: `mysql -u root < database/setup.sql`

3. **Update database credentials in `backend/server.js`:**
   - Default: `user: "appuser"`, `password: "secure_password_123"`

4. **Start the application:**

   ```bash
   npm run dev
   ```

   This starts both servers concurrently:
   - Backend: http://localhost:3001
   - Frontend: http://localhost:3000

5. **View the app:**
   - Open http://localhost:3000 in your browser
   - You should see "Hello, World!" fetched from the database

### Individual Commands

- `npm run install-backend` - Install backend dependencies
- `npm run install-frontend` - Install frontend dependencies
- `npm run start-backend` - Start backend server only
- `npm run start-frontend` - Start React app only

## Deployment to AWS EC2

### Prerequisites

- AWS account with EC2 access
- SSH key pair for EC2 access
- Basic familiarity with Linux command line

### EC2 Setup Steps

1. **Launch EC2 Instance:**
   - AMI: Ubuntu Server 22.04 LTS
   - Instance Type: t2.micro (free tier eligible)
   - Security Group: Allow SSH (22), HTTP (80), HTTPS (443), Custom TCP (3000), Custom TCP (3001)

2. **Connect to EC2:**

   ```bash
   ssh -i your-key.pem ubuntu@your-ec2-public-ip
   ```

3. **Run Setup Script:**
   - Upload `ec2-setup.sh` to your EC2 instance
   - Run: `chmod +x ec2-setup.sh && ./ec2-setup.sh`

4. **Upload Project Files:**
   - Upload your project files to EC2 (use `scp`, `rsync`, or Git)
   - Or clone from repository: `git clone your-repo-url`

5. **Configure and Start Application:**
   - Update paths in `ecosystem.config.js`
   - Start with PM2: `pm2 start ecosystem.config.js`
   - Check status: `pm2 status`

6. **Access Your App:**
   - Frontend: `http://your-ec2-public-ip:3000`
   - Backend API: `http://your-ec2-public-ip:3001`

### Production Considerations

- Set up a reverse proxy (nginx) for port 80/443
- Configure SSL certificate
- Set up monitoring and logging
- Implement proper security measures

## Future Enhancements

This template can be extended with:

- User authentication
- More complex data models
- Additional API endpoints
- Deployment configurations
