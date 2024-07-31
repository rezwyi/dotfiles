# dotfiles

## Prerequisites

You need to have the following software installed on your system:

1. Any terminal program supports 256 colors
1. `git`
1. `ansible`

To install do the following (e.g. Ubuntu):

```shell
sudo apt update && sudo apt install -y \
  python3 \
  python3-pip \
  git

pip install --upgrade --user ansible
```

## Run

```shell
git clone https://github.com/rezwyi/dotfiles.git
cd dotfiles
ansible-playbook main.yaml --extra-vars "@<path-to-file-with-envs-for-your-system>.yaml"
```

Example of extra vars file:

```yaml
---
dotfiles_system_username: foobar
dotfiles_git_username: John Doe
dotfiles_git_user_email: im@john.doe
```
