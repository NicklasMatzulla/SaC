# Postfix
Postfix is a program that enables the sending of e-mails.

## Usage
Install postfix with apt `install -y postfix libsasl2-modules` and set it up basically with the `Internet site` configuration wizard. Upload the files to the `/etc/postfix` folder and enter the password for the noreply email user in the `sasl_passwd` file. Finally, restart Postfix using `systemctl restart postfix.service`.