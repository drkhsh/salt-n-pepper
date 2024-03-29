mksh:
  pkg.installed

user:
  user.present:
    - shell: /usr/bin/mksh

/etc/drkhsh.mkshrc:
  file.managed:
    - source: salt://dotfiles/mksh/.mkshrc
    - user: root
    - group: root

/etc/profile.d/drkhsh.sh:
  file.managed:
    - source: salt://common/shell/mksh/profile
    - user: root
    - group: root

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
