# Inital server setup 

* connect to server `ssh root@server_ip -p server_port`
* creating a new user `adduser robocop`
* set a password `passwd robocop`
* add the new user to *wheel* group `usermod -aG wheel robocop`

# Setting up firewall

* install firewalld `sudo dnf install firewalld -y`
* enable the firewall `sudo systemctl enable firewalld`
* turn the firewall on `sudo systemctl start firewalld`
* check the status of the service `sudo systemctl status firewalld`
* checking the status of the firewall daemon `sudo firewall-cmd --state`
* list allowed services `sudo firewall-cmd --permanent --list-all`
* additional service that you can enable `sudo firewall-cmd --get-services`
* add a new service `sudo firewall-cmd --permanent --add-service=http`
* reload the firewall `sudo firewall-cmd --reload`
  
Predefined zones from least trusted to most trusted: drop, block, public, external, internal, dmz, work, home, trusted.

Make rule permanent using the `--permanent` flag.

Save current rules to the permanent configuration `sudo firewall-cmd --runtime-to-permanent`.

See wich zone in selected as default `firewall-cmd --get-default-zone`

See default zone configuration `sudo firewall-cmd --list-all`

List the available zones `firewall-cmd --get-zones`

See the configuration asociated with a specific zone `sudo firewall-cmd --zone=home --list-all`

All the zone definitions `sudo firewall-cmd --list-all-zones | less`

Changing the zone of an interface `sudo firewall-cmd --zone=home --change-interface=eth0`

Display the active zones `firewall-cmd --get-active-zones`

Set the default zone `sudo firewall-cmd --set-default-zone=home`

Add a service to a zone `sudo firewall-cmd --zone=public --add-service=http`
Check the service for a zone `sudo firewall-cmd --zone=public --list-services`
Make the rule permanent `sudo firewall-cmd --zone=public --add-service=http --permanent`
List permanent services `sudo firewall-cmd --zone=public --list-services --permanent`

Opening a port `sudo firewall-cmd --zone=public --add-port=5000/tcp`
Check the ports for a zone `sudo firewall-cmd --zone=public --list-ports`
Specify a sequential range of ports `sudo firewall-cmd --zone=public --add-port=4990-4999/udp`

## Defining a service 

* copy existing ssh `sudo cp /usr/lib/firewalld/services/ssh.xml /etc/firewalld/services/example.xml`
* adjust the definition `sudo vi /etc/firewalld/services/example.xml`
* example:

```xml
<?xml version="1.0" encoding="utf-8"?>
<service>
  <short>Example Service</short>
  <description>Example service description</description>
  <port protocol="tcp" port="7777"/>
  <port protocol="udp" port="8888"/>
</service>
```

* save and close the file, reload the firewall and check the services

## Creating your own zones

* `sudo firewall-cmd --permanent --new-zone=publicweb`
* `sudo firewall-cmd --permanent --new-zone=privateDNS`
* reload the firewall to bring the zones into the active runtime configuration
* add the services 
  
 ```bash
sudo firewall-cmd --zone=publicweb --add-service=ssh
sudo firewall-cmd --zone=publicweb --add-service=http
sudo firewall-cmd --zone=publicweb --add-service=https
sudo firewall-cmd --zone=publicweb --list-all
 ```

```bash
sudo firewall-cmd --zone=privateDNS --add-service=dns
sudo firewall-cmd --zone=privateDNS --list-all
```

* change out interfaces
```bash
sudo firewall-cmd --zone=publicweb --change-interface=eth0
sudo firewall-cmd --zone=privateDNS --change-interface=eth1
```
* save runtime configuration, reload the firewall and check the zones
* `firewall-cmd --get-active-zones`
* `sudo firewall-cmd --zone=publicweb --list-services`
* `sudo firewall-cmd --zone=privateDNS --list-services`