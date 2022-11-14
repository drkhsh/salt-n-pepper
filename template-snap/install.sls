template-snap_update:
  pkg.uptodate:
    - refresh: True

template-snap_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - qubes-core-agent-thunar
      - qubes-app-shutdown-idle
      - qubes-snapd-helper
      - qubes-desktop-linux-common
      - pulseaudio-qubes
      - snapd
    - skip_suggestions: True
    - install_recommends: False

