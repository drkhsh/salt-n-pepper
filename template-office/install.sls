template-office_update:
  pkg.uptodate:
    - refresh: True

template-office_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - qubes-core-agent-thunar
      - qubes-app-shutdown-idle
      - qubes-usb-proxy
      - pulseaudio-qubes
      - libreoffice
      - inkscape
      - gimp
      - sxiv
      - vim
      - vlc
    - skip_suggestions: True
    - install_recommends: False

