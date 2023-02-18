template-admin_update:
  pkg.uptodate:
    - refresh: True

template-admin_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - qubes-core-agent-thunar
      - qubes-app-shutdown-idle
      - openssh-client
      - mosh
      - firefox-esr
    - skip_suggestions: True
    - install_recommends: False

