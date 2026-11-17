# dotfiles

## Prerequisites

Make sure you have the following software installed on your system:

1. Any terminal program supports 256 colors.
1. `git`.
1. `ansible`.

To install these dependencies (on `Ubuntu`, for example):

```shell
sudo apt update && sudo apt install -y \
  python3 \
  python3-pip \
  python3-venv \
  git

pip install --upgrade --user --break-system-packages \
  ansible-core==2.17.14
```

## Usage

```shell
git clone https://github.com/rezwyi/dotfiles.git
cd dotfiles
export PATH="${PATH}:${HOME}/.local/bin"
ansible-playbook main.yaml --extra-vars "@/path/to/the/file/with/extra/vars.yaml"
```

Example `extra-vars` file:

```yaml
---
dotfiles_system_username: johndoe
dotfiles_git_username: John Doe
dotfiles_git_user_email: im@john.doe
dotfiles_yc_disk_exclude_dirs: Uploads,.venv
dotfiles_yc_disk_systemd_enabled: true
dotfiles_k8s_helm_version: 3.22.1
dotfiles_k8s_k9s_version: 0.51.0
dotfiles_k8s_k9s_theme: solarized-dark
dotfiles_k8s_krew_version: 0.5.0
dotfiles_k8s_kubectl_version: 1.37.1
dotfiles_testssl_sh_version: 3.2.4
dotfiles_tmux_theme: solarized-dark
dotfiles_kitty_version: 0.50.0
dotfiles_kitty_theme: solarized-dark
dotfiles_kitty_background_image: /path/to/image.jpg
dotfiles_amnezia_vpn_version: 5.1.0.6
```

## Updating `requirements.txt`

```shell
mkdir -p /tmp/update-pip-req && cd /tmp/update-pip-req
python3 -m venv .venv
source .venv/bin/activate
pip install -r /path/to/requirements.txt

pip install --upgrade \
  ansible \
  ansible-lint \
  atlassian-python-api \
  awscli \
  black \
  boto3 \
  bpytop \
  click \
  docker \
  flake8 \
  Flask \
  gunicorn \
  molecule \
  pytest \
  python-dotenv \
  python-telegram-bot \
  qrcode \
  uv \
  yamllint \
  yandexcloud

pip list --format=freeze > /path/to/requirements.txt
```
