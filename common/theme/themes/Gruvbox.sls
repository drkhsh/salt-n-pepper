{%- if not salt['file.directory_exists' ]('/usr/share/themes/Gruvbox') %}
'curl -LJ --proxy http://127.0.0.1:8082/ https://github.com/jmattheis/gruvbox-dark-gtk/archive/refs/heads/master.zip -o /tmp/gruvbox.zip':
  cmd.run
cleaned-gruvbox:
  file.absent:
    - name: /usr/share/themes/Gruvbox
'unzip -q /tmp/gruvbox.zip -d /usr/share/themes/':
  cmd.run
'mv /usr/share/themes/gruvbox-dark-gtk-master /usr/share/themes/Gruvbox':
  cmd.run

cleaned-gruvbox-zip:
  file.absent:
    - name: /tmp/gruvbox.zip
{%- endif %}
