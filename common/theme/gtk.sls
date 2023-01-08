gtk2-config-dir-present:
  file.directory:
    - name: /etc/gtk-2.0
    - makedirs: True
    - user: root
    - group: root
    - replace: True

gtk2-config-present:
  file.managed:
    - name: /etc/gtk-2.0/gtkrc
    - source: salt://common/theme/gtkrc-2.0
    - user: root
    - group: root
    - mode: 644
    - replace: True
    - template: jinja

gtk3-config-dir-present:
  file.directory:
    - name: /etc/gtk-3.0
    - makedirs: True
    - user: root
    - group: root
    - replace: True

gtk3-config-present:
  file.managed:
    - name: /etc/gtk-3.0/settings.ini
    - source: salt://common/theme/gtkrc-3.0
    - user: root
    - group: root
    - mode: 644
    - replace: True
    - template: jinja
