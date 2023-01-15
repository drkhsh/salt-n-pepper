zsh:
  pkg.installed

'usermod -s /usr/bin/zsh user':
  cmd.run

{% if grains['os_family']|lower == 'debian' %}
default_zshrc:
  file.append:
    - name: /etc/zsh/zshrc
    - source: salt://common/shell/zsh/zshrc
{% else %}
default_zshrc:
  file.append:
    - name: /etc/zshrc
    - source: salt://common/shell/zsh/zshrc
{% endif %}

'/etc/skel/.zshrc':
  file.touch

'curl -LJ --proxy http://127.0.0.1:8082/ https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-gnu.tar.gz -o /tmp/starship.tar.gz':
  cmd.run
'tar xf /tmp/starship.tar.gz -C /tmp':
  cmd.run

prompt_starship:
  file.managed:
    - name: /usr/bin/starship
    - source: /tmp/starship
    - user: root
    - group: root
    - mode: 755

cleaned-starship-tar:
  file.absent:
    - name: /tmp/starship.tar.gz
cleaned-starship:
  file.absent:
    - name: /tmp/starship

