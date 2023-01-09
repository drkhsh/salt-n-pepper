template-ssh_update:
  pkg.uptodate:
    - refresh: True

template-ssh_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - qubes-core-agent-thunar
      - qubes-app-shutdown-idle
      - openssh-client
      - mosh
    - skip_suggestions: True
    - install_recommends: False

