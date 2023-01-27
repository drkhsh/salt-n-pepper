mksh:
  pkg.installed

user:
  user.present:
    - shell: /usr/bin/mksh

default_mkshrc:
  file.managed:
    - name: /etc/skel/.mkshrc
    - source: salt://dotfiles/mksh/.mkshrc
    - user: root
    - group: root
    - replace: true

{%- if not salt['file.exists' ]('/usr/bin/polyglot') %}
'curl -LJ --proxy http://127.0.0.1:8082/ https://github.com/agkozak/polyglot/raw/master/polyglot.sh -o /tmp/polyglot':
  cmd.run

prompt_polyglot:
  file.managed:
    - name: /usr/bin/polyglot
    - source: /tmp/polyglot
    - user: root
    - group: root
    - mode: 755

cleaned-polyglot:
  file.absent:
    - name: /tmp/polyglot
{%- endif %}
