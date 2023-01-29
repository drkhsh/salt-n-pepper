fish:
  pkg.installed

user:
  user.present:
    - shell: /usr/bin/fish

/etc/fish:
  file.recurse:
    - name: /etc/fish
    - source: salt://dotfiles/fish/.config/fish
    - replace: true

include:
  - common.shell.starship

