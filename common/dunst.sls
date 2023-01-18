dunst-packages:
  pkg.installed:
    - pkgs:
      - dunst
{% if grains['os_family']|lower == 'debian' %}
      - libnotify-bin
{% else %}
      - libnotify
{% endif %}

/etc/dunst/dunstrc:
  file.managed:
    - source: salt://common/dotfiles/dunst/.config/dunst/dunstrc
    - replace: true

