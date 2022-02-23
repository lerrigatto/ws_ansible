# Workstation ansible

## Installation
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lerrigatto/ws_ansible/switch_to_mac/install.sh)"
 ```

## Apple
### Bootstrap

You should be able to run [install.sh](install.sh) and skip this section.

1. Install xcode `xcode-select --install`
2. Install ansible:
   1.Run the following command to add Python 3 to your $PATH: `export PATH="$HOME/Library/Python/3.8/bin:/opt/homebrew/bin:$PATH"`
   2. Upgrade Pip: `sudo pip3 install --upgrade pip` 
   3. Install Ansible: `pip3 install ansible`
3. Run ansible galaxy: `ansible-galaxy install -r requirements.yml`
4. Run `./run_desktop.sh`


## Linux
### Keys
- You need to add an ssh key in your user home folder.
- The ssh key you provide must be able to connect to github.com
- You need to copy the public key in the machines with:
  ``` ssh-copy-id -i local-pub-key-path ip-address-of-host ```
- Workstations need to have the ssh key in the authorized_hosts

## Bootstrap
If you have a clean debian 11 install you need to do the following in order to run all this.

- apt update && apt install git sudo
- git clone https://github.com/lerrigatto/ws_ansible.git
- /sbin/usermod elacava -G sudo
- run install.sh
- ./run_desktop.sh "--connection=local -t bitwarden"
- run get-install-key
- run run_desktop.sh "--connection=local"

Known issues of this process
- ansible req python 3.8 (got 3.7)
- must log ansible to file

BUT HEY! It kinda works...

## Attributions
Where necessary, you will find an ATTRIBUTION file detailing the source and licences of other people code.
