common_update:
  pkg.uptodate:
    - refresh: True

{% if grains['os_family']|lower == 'debian' %}
common_install:
  pkg.installed:
    - pkgs:
      - pciutils
      - vim-tiny
      - less
      - psmisc
      - mksh
      # icon themes etc.
      - curl
      - unzip
    - skip_suggestions: True
    - install_recommends: False
{% else %}
common_install:
  pkg.installed:
    - pkgs:
      - pciutils
      - vim-minimal
      - less
      - psmisc
      - mksh
      # icon themes etc.
      - curl
      - unzip
    - skip_suggestions: True
    - install_recommends: False
{% endif %}

'usermod -s /usr/bin/mksh user':
  cmd.run

default_mkshrc:
  file.managed:
    - name: /etc/skel/.mkshrc
    - source: salt://common/mkshrc
    - user: root
    - group: root

prompt_polyglot:
  file.managed:
    - name: /usr/bin/polyglot
    - source: salt://common/polyglot.sh
    - user: root
    - group: root
    - mode: 755

