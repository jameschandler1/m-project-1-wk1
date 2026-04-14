module.exports = {
  apps: [
    {
      name: "backend",
      script: "backend/server.js",
      cwd: "/home/ubuntu/m-project-1-wk1",
      env_file: "/home/ubuntu/m-project-1-wk1/.env",
      env: {
        NODE_ENV: "production",
      },
    },
    {
      name: "frontend",
      script: "npx",
      args: "serve -s frontend/build -l 3000",
      cwd: "/home/ubuntu/m-project-1-wk1",
      env_file: "/home/ubuntu/m-project-1-wk1/.env",
      env: {
        NODE_ENV: "production",
      },
    },
  ],
};
