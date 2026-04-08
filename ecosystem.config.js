module.exports = {
  apps: [
    {
      name: "backend",
      script: "backend/server.js",
      cwd: "/home/ubuntu/m-project-1-wk1", // Update this to your project path
      env: {
        NODE_ENV: "production",
        PORT: 3001,
      },
    },
    {
      name: "frontend",
      script: "serve",
      args: "-s frontend/build -l 3000",
      cwd: "/home/ubuntu/m-project-1-wk1", // Update this to your project path
      env: {
        NODE_ENV: "production",
      },
    },
  ],
};
