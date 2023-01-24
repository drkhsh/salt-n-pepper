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

