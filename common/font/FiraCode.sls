'curl -LJ --proxy http://127.0.0.1:8082 -o /tmp/firacode.ttf -- https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/FiraCodeNerdFontMono-Regular.ttf?raw=true':
  cmd.run

fira-code-installed:
  file.managed:
    - name: /usr/share/fonts/fira-code_regular-mono-nerd.ttf
    - source: /tmp/firacode.ttf
    - user: root
    - group: root
    - mode: 644

fira-code-cleaned:
  file.absent:
    - name: /tmp/firacode.ttf
