common_update:
  pkg.uptodate:
    - refresh: True

common_install:
  pkg.installed:
    - pkgs:
      - pciutils
      - less
      - psmisc
      # icon themes etc.
      - curl
      - unzip
      # tools
{% if grains['os_family']|lower == 'debian' %}
      - vim-tiny
      - x11-utils # xkill
{% else %}
      - vim-minimal
      - xkill
{% endif %}
      - htop
      - man-db
      # salt
      - file
      # clipboard
      - xclip
    - skip_suggestions: True
    - install_recommends: False
    - order: 1

include:
  - common.shell
