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
      - qubes-pdf-converter
      - qubes-img-converter
      - pulseaudio-qubes
      - libreoffice
      - inkscape
      - gimp
      - mupdf
      - sxiv
      - vim
      - vlc
    - skip_suggestions: True
    - install_recommends: False

template-office_mimeapps:
  file.managed:
    - name: /usr/share/applications/mimeapps.list
    - source: salt://template-office/mimeapps.list
    - user: root
    - group: root

