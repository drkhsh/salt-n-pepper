template-browser_update:
  pkg.uptodate:
    - refresh: True

template-browser_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - qubes-pdf-converter
      - qubes-img-converter
      - qubes-core-agent-thunar
      - qubes-app-shutdown-idle
      - qubes-usb-proxy
      - qubes-u2f
      - pulseaudio-qubes
      - lynx
    - skip_suggestions: True
    - install_recommends: False

template-browser_mimeapps:
  file.managed:
    - name: /usr/share/applications/mimeapps.list
    - source: salt://template-browser/mimeapps.list
    - user: root
    - group: root

