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
  git

pip install --upgrade --user ansible
```

## Usage

```shell
git clone https://github.com/rezwyi/dotfiles.git
cd dotfiles
ansible-playbook main.yaml --extra-vars "@/path/to/the/file/with/extra/vars.yaml"
```

Example `extra-vars` file:

```yaml
---
dotfiles_system_username: foobar
dotfiles_git_username: John Doe
dotfiles_git_user_email: im@john.doe
dotfiles_yc_disk_exclude_dirs: Uploads
dotfiles_yc_disk_systemd_enabled: true
dotfiles_k8s_helm_version: 3.18.4
dotfiles_k8s_k9s_version: 0.50.9
dotfiles_k8s_krew_version: 0.4.5
dotfiles_k8s_kubectl_version: 1.33.3
dotfiles_testssl_sh_version: 3.2.1
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
