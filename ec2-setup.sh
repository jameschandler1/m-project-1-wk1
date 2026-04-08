# Commands to run on your EC2 instance after connecting via SSH

# Update system packages
sudo apt update && sudo apt upgrade -y

# Install Node.js 18.x
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# Verify Node.js installation
node --version
npm --version

# Install MySQL server
sudo apt install mysql-server -y

# Secure MySQL installation (follow prompts)
sudo mysql_secure_installation

# Start MySQL service
sudo systemctl start mysql
sudo systemctl enable mysql

# Create database and user
sudo mysql -u root -p << 'EOF'
CREATE DATABASE hello_world_db;
CREATE USER 'appuser'@'localhost' IDENTIFIED BY 'secure_password_123';
GRANT ALL PRIVILEGES ON hello_world_db.* TO 'appuser'@'localhost';
FLUSH PRIVILEGES;
EXIT;
EOF

# Clone your project (replace with your repo URL if using Git)
# If not using Git, you'll need to upload files via scp or other method
git clone https://github.com/yourusername/your-repo.git
cd your-repo

# Or if uploading manually, create directory and upload files
# mkdir your-project
# cd your-project
# # Upload files here

# Install dependencies
npm run install-all

# Set up database
npm run setup-db

# Update database credentials in server.js if needed
# nano backend/server.js

# Build React app for production
cd frontend
npm run build
cd ..

# Install PM2 for process management
sudo npm install -g pm2 serve

# Start the application with PM2
pm2 start ecosystem.config.js

# Or start manually (not recommended for production)
# npm run dev

# Check if app is running
pm2 status

# Configure firewall (if needed)
sudo ufw allow 3000
sudo ufw allow 3001
sudo ufw --force enable

# Get your public IP
curl ifconfig.me