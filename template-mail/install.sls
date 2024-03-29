template-mail_update:
  pkg.uptodate:
    - refresh: True

template-mail_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - qubes-pdf-converter
      - qubes-img-converter
      - qubes-core-agent-thunar
      - qubes-app-shutdown-idle
      - qubes-gpg-split
      - neomutt
      - isync
      - w3m
      - zenity
      - dbus-user-session # mbsync.timer
      - libsasl2-modules # neomutt smtp auth
      - vim-gtk3 # x11 clipboard
      # dotfiles
      - git
      - stow
      # rss
      - newsboat
      - feh
    - skip_suggestions: True
    - install_recommends: False

default_muttrc:
  file.managed:
    - name: /etc/skel/.neomuttrc
    - source: salt://template-mail/muttrc
    - user: user
    - group: user

