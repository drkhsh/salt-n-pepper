update:
  pkg.uptodate:
    - refresh: True

installed:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - qubes-app-shutdown-idle
      - qubes-gpg-split
      - mutt
      - isync
      - w3m
      - zenity
    - skip_suggestions: True
    - install_recommends: False

default_muttrc:
  file.managed:
    - name: /etc/skel/.muttrc
    - source: salt://template-mail/muttrc
    - user: user
    - group: user

