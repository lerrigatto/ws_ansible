# Workstation ansible

## Prerequisites
### Keys
- You need to add an ssh key in your user home folder.
- The ssh key you provide must be able to connect to github.com
- You need to copy the public key in the machines with:
  ``` ssh-copy-id -i local-pub-key-path ip-address-of-host ```
- Workstations need to have the ssh key in the authorized_hosts

## Bootstrap
If you have a clean debian 11 install you need to do the following in order to run all this.

- apt update && apt install curl
- apt install $(curl -L lerrigatto.dev/bootstrap/ansible)
- /sbin/usermod elacava -G sudo
- get bitwarden CLI https://bitwarden.com/help/article/cli/
- get ssh keys from bwcli
- git clone git@github.com:lerrigatto/ws_ansible.git
- run install.sh
- run run_desktop.sh "--connection=local"

Known issues of this process
- good luck getting the bitwarden CLI
- even more luck getting the keys from bwcli
- .local/bin not in path (install.sh)
- ansible req python 3.8 (got 3.7)
- must log ansible to file

BUT HEY! It kinda works...

## Attributions
Where necessary, you will find an ATTRIBUTION file detailing the source and licences of other people code.
