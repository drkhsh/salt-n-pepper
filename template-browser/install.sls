template-browser_repo-key:
  file.managed:
    - name: /home/user/brave-core.asc
    - source: salt://template-browser/brave-core.asc
    - user: root
    - group: root
    - mode: 644

template-browser_repos:
  pkgrepo.managed:
    - humanname: Brave Browser
    - baseurl: https://brave-browser-rpm-release.s3.brave.com/$basearch
    - gpgkey: file:///home/user/brave-core.asc
    - gpgcheck: 1

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
      - brave-browser
      - firefox
      - lynx
      - wget
      - curl
      - iputils
      - bind-utils
    - skip_suggestions: True
    - install_recommends: False

template-browser_mimeapps:
  file.managed:
    - name: /usr/share/applications/mimeapps.list
    - source: salt://template-browser/mimeapps.list
    - user: root
    - group: root

