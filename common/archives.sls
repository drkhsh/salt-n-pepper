template-dev_install:
  pkg.installed:
    - pkgs:
      - zip
      - unzip
      - unrar
      - p7zip
{% if grains['os_family']|lower == 'debian' %}
      - p7zip-full
      - p7zip-rar
{% endif %}

