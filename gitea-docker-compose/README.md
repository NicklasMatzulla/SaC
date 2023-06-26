# Gitea
Gitea is a Git server with extensive features like CI/CD.

## Usage
Copy all files and start the Gitea using `docker compose up -d gitea postgres caddy`. Run the installation, then copy the runner registration token from the administration interface and enter it in the runner configuration file. Following start the runner service using `docker compose up -d`.