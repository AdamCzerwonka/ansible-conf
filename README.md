# Ansible script for dev environment installation.

I made this playbook in order to be able to quickly install sane defaults on a new linux machine.
It is made only for debian based distros (tested on ubuntu).

# How to run

1. Clone this repo
```
git clone https://github.com/AdamCzerwonka/ansible-conf
```
2. Install ansible and git
```
apt install git
python3 -m pip install --user ansible
```
3. Run playbook
```
cd ansible-conf
ansible-playbook local.yml -K
```
You need to scpecify `-K` in order to provide sudo password to run command that require sudo privs.
You can specify parts you want to run with `-t`, list of tags is bellow.

# What it does
- Install zsh and oh-my-zsh (tag `zsh`)
- Build and install neovim (tag `neovim`)
- Install docker and add curent user to docker group (tag `docker`)
