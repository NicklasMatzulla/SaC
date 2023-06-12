# Proxmox Network Configuration
A basic network configuration for the Proxmox virtualization platform with OPNsense based as firewall and routing platform.

## Usage
Install the configuration in `/etc/network/interfaces` and adjust the following placeholders:
- INTERFACE_NAME: Interface name of the physical network interface of the server
- MAIN_IP_CIDR: The CIDR of the main IP address of the server
- MAIN_IP_GATEWAY: The gateway address of the main IP address of the server
- SERVER_MAC_ADDRESS: The bound MAC address of the server's main IP address, use the `ip addr` command to display
