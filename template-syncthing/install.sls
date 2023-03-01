template-syncthing_update:
  pkg.uptodate:
    - refresh: True

template-syncthing_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - qubes-core-agent-thunar
      # syncthing
      - syncthing
      - firefox
      # dotfiles
      - git
      - stow
    - skip_suggestions: True
    - install_recommends: False

syncthing@user.service:
  service.enabled

