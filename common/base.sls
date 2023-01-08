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
{% if grains['os_family']|lower == 'debian' %}
      - vim-tiny
{% else %}
      - vim-minimal
{% endif %}
    - skip_suggestions: True
    - install_recommends: False

include:
  - common.shell.{{ salt['pillar.get']('shell', 'mksh') }}

