'curl -LJ --proxy http://127.0.0.1:8082 https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/ShareTechMono/complete/Shure%20Tech%20Mono%20Nerd%20Font%20Complete%20Mono.ttf -o /tmp/shuretechmono.ttf':
  cmd.run

shure-tech-mono-installed:
  file.managed:
    - name: /usr/share/fonts/shure-tech-mono-nerd.ttf
    - source: /tmp/shuretechmono.ttf
    - user: root
    - group: root
    - mode: 644

shure-tech-mono-cleaned:
  file.absent:
    - name: /tmp/shuretechmono.ttf
