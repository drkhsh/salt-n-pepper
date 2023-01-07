st_install:
  file.managed:
    - name: /usr/bin/st
    - source: salt://common/st
    - user: root
    - group: root
    - mode: 755
    - replace: True

st_install-font:
  file.managed:
    - name: /usr/share/fonts/fira-code_regular-mono-nerd.ttf
    - source: salt://common/fira-code_regular-mono-nerd.ttf
    - user: root
    - group: root
    - mode: 644

st_install-desktop:
  file.managed:
    - name: /usr/share/applications/st.desktop
    - source: salt://common/st.desktop
    - user: root
    - group: root
    - mode: 644
    - replace: True

st_update:
  pkg.uptodate:
    - refresh: True

'update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/st 0':
  cmd.run
'update-alternatives --set x-terminal-emulator /usr/bin/st':
  cmd.run
'ln -sf /usr/bin/st /usr/bin/xterm':
  cmd.run
