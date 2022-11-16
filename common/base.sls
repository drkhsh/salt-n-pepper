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
    - skip_suggestions: True
    - install_recommends: False
{% endif %}
