shell_env:
  file.managed:
    - name: /etc/drkhsh.env
    - source: salt://dotfiles/shell/.env
    - user: user
    - group: user
    - order: 1

shell_aliases:
  file.managed:
    - name: /etc/drkhsh.aliases
    - source: salt://dotfiles/shell/.aliases
    - user: user
    - group: user
    - order: 1

shell_functions:
  file.managed:
    - name: /etc/drkhsh.functions
    - source: salt://dotfiles/shell/.functions
    - user: user
    - group: user
    - order: 1

shell_banner:
  file.managed:
    - name: /etc/drkhsh.motd
    - source: salt://dotfiles/shell/.banner
    - user: user
    - group: user
    - order: 1

include:
  - common.shell.{{ salt['pillar.get']('shell', 'zsh') }}
