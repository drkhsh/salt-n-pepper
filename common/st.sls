st_install:
  file.managed:
    - name: /usr/bin/st
    - source: salt://common/st
    - user: root
    - group: root
    - mode: 755
    - replace: True

'curl -LJ --proxy http://127.0.0.1:8082 https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono.ttf?raw=true -o /tmp/firacode.ttf':
  cmd.run

st_install-font:
  file.managed:
    - name: /usr/share/fonts/fira-code_regular-mono-nerd.ttf
    - source: /tmp/firacode.ttf
    - user: root
    - group: root
    - mode: 644

st_install-emoji-font:
  pkg.installed:
    - pkgs:
{% if grains['os_family']|lower == 'debian' %}
      - fonts-noto-color-emoji
{% else %}
      - google-noto-emoji-color-fonts
{% endif %}

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
'ln -sf /usr/bin/st /usr/bin/x-terminal-emulator':
  cmd.run
'ln -sf /usr/bin/st /usr/bin/xterm':
  cmd.run

cleaned-st-font:
  file.absent:
    - name: /tmp/firacode.ttf
