installed:
  pkg.installed:
    - pkgs:
{% if grains['os_family']|lower == 'debian' %}
      - qt5-style-plugins
      - gtk2-engines-murrine
      - gnome-themes-standard
{% else %}
      - qt5-qtstyleplugins
      - gtk-murrine-engine
      - gnome-themes-extra
{% endif %}
    - skip_suggestions: True
    - install_recommends: False
    - order: 1

include:
  - common.theme.themes.{{ salt['pillar.get']('theme:gtk', 'Dracula') }}
  - common.theme.icons.{{ salt['pillar.get']('theme:icons', 'Dracula') }}
  - common.theme.gtk
  - common.theme.qt

