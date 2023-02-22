zsh:
  pkg.installed

user:
  user.present:
    - shell: /usr/bin/zsh

default_zshrc:
  file.managed:
{% if grains['os_family']|lower == 'debian' %}
    - name: /etc/zsh/zshrc
{% else %}
    - name: /etc/zshrc
{% endif %}
    - source: salt://dotfiles/zsh/.zshrc

default_zprofile:
  file.managed:
{% if grains['os_family']|lower == 'debian' %}
    - name: /etc/zsh/zprofile
{% else %}
    - name: /etc/zprofile
{% endif %}
    - source: salt://common/shell/zsh/zprofile

'/etc/skel/.zshrc':
  file.touch

include:
  - common.shell.starship

