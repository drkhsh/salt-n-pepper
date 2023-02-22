'curl -LJ --proxy http://127.0.0.1:8082 https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono.ttf?raw=true -o /tmp/firacode.ttf':
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
