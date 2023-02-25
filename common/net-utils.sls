net-utils-install:
  pkg.installed:
    - pkgs:
      - wget
      - curl
{% if grains['os_family']|lower == 'debian' %}
      - iputils-ping
      - iputils-tracepath
      - dnsutils
{% else %}
      - iputils
      - bind-utils
{% endif %}

