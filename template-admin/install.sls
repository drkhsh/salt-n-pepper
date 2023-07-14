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
      - tigervnc-viewer
      # libvirt
      - virt-manager
      - spice-client-gtk
      - gir1.2-spiceclientgtk-3.0
      - ssh-askpass
      # scripts
      - git
      - shellcheck
      - vim
    - skip_suggestions: True
    - install_recommends: False

