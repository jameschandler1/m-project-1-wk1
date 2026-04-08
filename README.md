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
   - Default: `user: "root"`, `password: ""` (no password)

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

## Future Enhancements

This template can be extended with:

- User authentication
- More complex data models
- Additional API endpoints
- Deployment configurations
