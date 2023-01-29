shell_profile:
  file.managed:
    - name: /etc/profile
    - source: salt://dotfiles/shell/.profile
    - user: root
    - group: root
    - replace: true
    - order: 1

shell_aliases:
  file.managed:
    - name: /etc/drkhsh.aliases
    - source: salt://dotfiles/shell/.aliases
    - user: root
    - group: root
    - replace: true
    - order: 1

shell_functions:
  file.managed:
    - name: /etc/drkhsh.functions
    - source: salt://dotfiles/shell/.functions
    - user: root
    - group: root
    - replace: true
    - order: 1

include:
  - common.shell.{{ salt['pillar.get']('shell', 'zsh') }}
