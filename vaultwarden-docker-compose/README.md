# Vaultwarden
Vaultwarden is a password vault that allows sharing passwords within a team.

## Usage
Upload the files in the `/opt` folder and configure the configuration files. Then run `acme.sh` followed by `vaultwarden` using docker compose. Run the script in acme.sh/ssl once to move the SSL files and restart the web server. Finally, create a cronjob with the entry `0 0 1 * * bash /opt/acme.sh/ssl/update-vaultwarden.sh >> /opt/acme.sh/ssl/update-vaultwarden.log 2>&1`.