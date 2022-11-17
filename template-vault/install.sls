template-vault_update:
  pkg.uptodate:
    - refresh: True

template-vault_install:
  pkg.installed:
    - pkgs:
      - qubes-gpg-split
      - qubes-usb-proxy
      - qubes-core-agent-thunar
      - qubes-app-shutdown-idle
      - nitrokey-app
      - gnupg
      - pass
      - xclip
      - pwgen
      - pinentry-gtk2
      - scdaemon
      - pcscd
      - openssh-client
      - ssh-askpass-gnome
      - socat
      - dunst
      - policykit-1 # fix nitrokey-app
      - dbus-user-session # fix gpg-agent startup
    - skip_suggestions: True
    - install_recommends: False

template-vault_ssh-split:
  file.managed:
    - name: /etc/qubes-rpc/qubes.SshAgent
    - source: salt://template-vault/qubes.SshAgent
    - user: root
    - group: root
    - mode: 755

template-vault_nitrokey-rules:
  file.managed:
    - name: /etc/udev/rules.d/41-nitrokey.rules
    - source: salt://template-vault/41-nitrokey.rules
    - user: root
    - group: root

