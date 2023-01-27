font-deps-installed:
  pkg.installed:
    - pkgs:
{% if grains['os_family']|lower == 'debian' %}
      - fonts-symbola
      - fonts-powerline
{% else %}
      - gdouros-symbola-fonts
      - powerline-fonts
{% endif %}
    - skip_suggestions: True
    - install_recommends: False
    - order: 1

include:
  - common.font.{{ salt['pillar.get']('theme:font', 'ShureTech-Mono') }}
