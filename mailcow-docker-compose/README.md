# Mailcow
Mailcow is an email server that allows you to send and receive emails. Among other things, Mailcow provides e-mail protection mechanisms against spam and other malicious.

## Usage
Upload the files in the `/opt` folder and configure the configuration files, following run `acme.sh`. Install Mailcow according to the [official installation instructionsh](https://docs.mailcow.email) and run it. Make sure that ACME is deactivated! Run the script in `acme.sh/ssl` once to move the SSL files and restart the mail server. Finally, create a cronjob with the entry `0 0 * * * bash /opt/acme.sh/ssl/update-mailcow.sh >> /opt/acme.sh/ssl/update-mailcow.log 2>&1`.
