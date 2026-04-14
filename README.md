# M Project - React + Node.js + MySQL

Simple fullstack application using React for frontend, Node.js with Express for backend, and MySQL for the database.

## Quick Start

### Local Development
```bash
# Install dependencies
npm run install-all

# Setup database
npm run setup-db

# Start development servers
npm run dev
```

### Production Deployment
```bash
# On EC2 instance:
git clone <your-repo>
cd m-project-1-wk1

# Install dependencies
npm run install-all

# Setup environment
cp .env.example .env
# Edit .env with your credentials

# Build and setup database
npm run build
npm run setup-db

# Start with PM2
pm2 start ecosystem.config.js
```

## Environment Variables
Create `.env` file:
```bash
DB_HOST=localhost
DB_USER=app_user
DB_PASSWORD=app_password123
DB_NAME=hello_world_db
DB_PORT=3306
NODE_ENV=production
PORT=3001
```

## Database Management
- **Setup**: `npm run setup-db` (runs `database/setup.sql`)
- **Access**: Use `app_user` credentials (not root)
- **Modify**: Connect with `mysql -u app_user -p` and use `hello_world_db`

## Project Structure
- `backend/` - Node.js API server
- `frontend/` - React application
- `database/` - SQL setup scripts
- `.env` - Environment configuration (not committed)
- `ecosystem.config.js` - PM2 configuration (uses .env)

## Security Notes
- Application uses `app_user`, not root
- Environment variables in `.env` (gitignored)
- Database credentials separated from code

## Commands
- `npm run install-all` - Install all dependencies
- `npm run setup-db` - Setup database and tables
- `npm run dev` - Start development servers
- `npm run build` - Build frontend for production
- `pm2 start ecosystem.config.js` - Start production servers
