# Base system setup

Strongly inspired from https://github.com/laluka/lalubuntu.

## Installation

Install dependencies:

```bash
sudo apt-get clean
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y pipx curl vim git wget tzdata sudo tmux
pipx install ansible-core
pipx ensurepath
export PATH="$PATH:$HOME/.local/bin"
ansible-galaxy collection install community.general
```

Run playbooks of your choice:

```bash
ansible-playbook -vv -i inventory.ini --ask-become main.yml --tags base-install
ansible-playbook -vv -i inventory.ini --ask-become main.yml --tags gui-tools
```


## To-do

- [ ] Add virtualbox in gui tools
- [ ] Add vagrant in gui tools