st_install:
  file.managed:
    - name: /usr/bin/st
    - source: salt://bin/st
    - user: root
    - group: root
    - mode: 755

st_install-desktop:
  file.managed:
    - name: /usr/share/applications/st.desktop
    - source: salt://common/st.desktop
    - user: root
    - group: root
    - mode: 644

{% if grains['os_family']|lower == 'debian' %} 
'update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/st 0':
  cmd.run
'update-alternatives --set x-terminal-emulator /usr/bin/st':
  cmd.run
{% endif %}
'ln -sf /usr/bin/st /usr/bin/x-terminal-emulator':
  cmd.run
'ln -sf /usr/bin/st /usr/bin/xterm':
  cmd.run

