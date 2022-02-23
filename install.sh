#!/bin/bash

OS="$(uname)"
LINUX_REQUIRED_PKG='git python3-venv python3-dev unzip'

echo -e "You are running on: $OS \n"

if [[ ${OS} == "Linux" ]]; then
  echo "Install required packages"
  # shellcheck disable=SC2086
  sudo apt-get update && sudo apt-get install $LINUX_REQUIRED_PKG
fi

if [[ ${OS} == "Darwin" ]]; then
  echo "Install xcode"
  xcode-select --install
  echo "Update path"
  export PATH="$HOME/Library/Python/3.8/bin:/opt/homebrew/bin:$PATH"
  echo "$HOME/Library/Python/3.8/bin" | sudo tee /etc/paths.d/python38
  echo "/opt/homebrew/bin" | sudo tee /etc/paths.d/homebrew
fi

echo "Download pip"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
echo "Install pip"
# check if this is the same as: `sudo pip3 install --upgrade pip`
python3 get-pip.py --user
echo "Install ansible"
# check if this is the same as: `pip3 install ansible`
python3 -m pip install --user ansible
echo "Remove pip installer script"
rm get-pip.py
echo "Create repo folder"
mkdir -p "$HOME/dev/ws_ansible/"
echo "Fetch the repo"
git clone https://github.com/lerrigatto/ws_ansible.git "$HOME/dev/ws_ansible/"
echo "Get into the repo folder"
cd "$HOME/dev/ws_ansible/" || exit 1
echo "Download ansible-galaxy requirements"
ansible-galaxy install -r requirements.yml

echo "You can now use this repo. Try:"
echo 'run_desktop.sh "--connection=local"'


#- ./run_desktop.sh "--connection=local -t bitwarden"
 #- run get-install-key
# echo "Fetch your ssh key from bitwarden"
#echo "run: get-ssh-key"
#
#echo "Add your key on the target machine, even if it is localhost:"
#echo -e "ssh-copy-id -i ~/.ssh/id_ed25519.pub localhost \n"
 #- run run_desktop.sh "--connection=local"