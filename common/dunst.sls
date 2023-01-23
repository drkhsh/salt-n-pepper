dunst-packages:
  pkg.installed:
    - pkgs:
      - dunst
{% if grains['os_family']|lower == 'debian' %}
      - libnotify-bin
{% else %}
      - libnotify
{% endif %}

/etc/dunst:
  file.directory:
    - makedirs: True
    - user: root
    - group: root

/etc/dunst/dunstrc:
  file.managed:
    - source: salt://common/dotfiles/dunst/.config/dunst/dunstrc
    - user: root
    - group: root
    - replace: true

