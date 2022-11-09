st_install:
  file.managed:
    - name: /usr/local/bin/st
    - source: salt://st/st
    - user: root
    - group: root
    - mode: 755

st_install-desktop:
  file.managed:
    - name: /usr/share/applications/st.desktop
    - source: salt://st/st.desktop
    - user: root
    - group: root
    - mode: 644

st_update:
  pkg.uptodate:
    - refresh: True

st_install-fonts:
  pkg.installed:
    - pkgs:
      - fonts-firacode
    - skip_suggestions: True
    - install_recommends: False

'update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/st 0':
  cmd.run
'update-alternatives --set x-terminal-emulator /usr/local/bin/st':
  cmd.run
'ln -sf /usr/local/bin/st /usr/bin/xterm':
  cmd.run
