template-media_update:
  pkg.uptodate:
    - refresh: True

template-media_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - qubes-core-agent-thunar
      - qubes-core-agent-passwordless-root
      - qubes-app-shutdown-idle
      - qubes-usb-proxy
      - qubes-pdf-converter
      - qubes-img-converter
      - pulseaudio-qubes
      - libreoffice
      - shotwell
      - inkscape
      - gimp
      - mupdf
      - sxiv
      - mpv # rpmfusion
      # qr codes
      - qrencode
      - zbar
    - skip_suggestions: True
    - install_recommends: False

template-media_mimeapps:
  file.managed:
    - name: /usr/share/applications/mimeapps.list
    - source: salt://template-media/mimeapps.list
    - user: root
    - group: root

