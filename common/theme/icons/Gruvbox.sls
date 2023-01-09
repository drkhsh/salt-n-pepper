{%- if not salt['file.directory_exists' ]('/usr/share/icons/Gruvbox') %}
'curl -LJ --proxy http://127.0.0.1:8082/ https://github.com/jmattheis/gruvbox-dark-icons-gtk/archive/refs/heads/master.zip -o /tmp/gruvbox-icons.zip':
  cmd.run
cleaned-gruvbox-icons:
  file.absent:
    - name: /usr/share/icons/Gruvbox
'unzip -q /tmp/gruvbox-icons.zip -d /usr/share/icons':
  cmd.run
'mv /usr/share/icons/gruvbox-dark-icons-gtk-master /usr/share/icons/Gruvbox':
  cmd.run

cleaned-gruvbox-icons-zip:
  file.absent:
    - name: /tmp/gruvbox-icons.zip
{%- endif %}
