# dotfiles

## Prerequisites

You need to have the following software installed on your system:

1. Any terminal program supports 256 colors
1. `git`
1. `Ansible`

To install `git` do the following:

```shell
sudo apt update && apt install git
```

To install `Ansible` do the following:

```shell
sudo apt update && sudo apt install -y \
  build-essential \
  libssl-dev \
  libffi-dev \
  python3-dev \
  python3-pip

pip3 install --upgrade --user ansible
```

## Setup

```shell
git clone https://github.com/rezwyi/dotfiles.git
cd dotfiles
ansible-playbook setup.yaml --extra-envs "@ansible/extra-vars/<envs-for-your-system>.yaml"
cd -
```
