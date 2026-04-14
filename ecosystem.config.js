module.exports = {
  apps: [
    {
      name: "backend",
      script: "backend/server.js",
      cwd: "/home/ubuntu/m-project-1-wk1",
      env: {
        NODE_ENV: "production",
        PORT: 3001,
        DB_HOST: "localhost",
        DB_USER: "app_user",
        DB_PASSWORD: "app_password123",
        DB_NAME: "m_project_db",
        DB_PORT: 3306,
      },
    },
    {
      name: "frontend",
      script: "serve",
      args: "-s frontend/build -l 3000",
      cwd: "/home/ubuntu/m-project-1-wk1",
      env: {
        NODE_ENV: "production",
      },
    },
  ],
};
