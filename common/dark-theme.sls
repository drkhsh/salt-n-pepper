dark-theme_update:
  pkg.uptodate:
    - refresh: True

{% if grains['os_family']|lower == 'debian' %}
dark-theme_install-deps:
  pkg.installed:
    - pkgs:
      - qt5-style-plugins
      - gtk2-engines-murrine
      - gnome-themes-standard
    - skip_suggestions: True
    - install_recommends: False
{% else %}
dark-theme_install-deps:
  pkg.installed:
    - pkgs:
      - qt5-qtstyleplugins
      - gtk-murrine-engine
      - gnome-themes-extra
    - skip_suggestions: True
    - install_recommends: False
{% endif %}

dark-theme_install-gtkrc-2.0:
  file.managed:
    - name: /etc/skel/.gtkrc-2.0
    - source: salt://common/gtkrc-2.0
    - user: root
    - group: root
    - mode: 644

dark-theme_install-gtkrc-3.0_dir:
  file.directory:
    - name: /etc/skel/.config/gtk-3.0
    - makedirs: True
    - user: root
    - group: root

dark-theme_install-gtkrc-3.0:
  file.managed:
    - name: /etc/skel/.config/gtk-3.0/settings.ini
    - source: salt://common/settings.ini
    - user: root
    - group: root
    - mode: 644

dark-theme_install-qt:
  file.append:
    - name: /etc/environment
    - text: |
        QT_QPA_PLATFORMTHEME=gtk2
        QT_SCALE_FACTOR=1

