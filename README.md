# EepyShell Framework

![alt text](logo.png)

## About
**EepyShell Exploitation Framework (ESEF)**, a Bash powered exploitation toolkit for red team ops. Automate stealthy recon, exploitation, lateral movement, persistency, privelege escalation, data exfiltration, and anti-forensics, with optional modules to generate/deploy payloads for Bash Bunny, USB Rubber Ducky, Key Croc, and LAN Turtle.

## Installation
* Clone repo:
``` 
git clone https://github.com/S1aX0r/EepyShell.git && cd EepyShell
```

* Install EepyShell
```
chmod +x install.sh
sudo ./install.sh
```

## How to Use

ESEF follows the simplicity of the Metasploit Framework. Commands, modules and the overall 'feel' of ESEF will be familiar to msfconsole.

* Launch from terminal

```
eepyshell
```

* Help for commands

```
esef> help
```

* Search for modules

```
esef> search <MODULE NAME>
```

* Example:

```
esef> search smtp enum
```

* Get information for modules

```
esef> info recon/smtp/vuln_enum
```

* Load modules

```
esef> load recon/smtp/vuln_enum
```

* Show information for module

```
esef> options
```

* Configure options

```
esef> set <OPTION>
```

* Example:

```
esef> set TARGET = 192.168.133.09
```
* Run module

```
esef> exploit
```