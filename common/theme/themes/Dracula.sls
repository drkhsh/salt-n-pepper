{%- if not salt['file.directory_exists' ]('/usr/share/themes/Dracula') %}
'curl -LJ --proxy http://127.0.0.1:8082/ https://github.com/dracula/gtk/archive/master.zip -o /tmp/dracula.zip':
  cmd.run
'unzip /tmp/dracula.zip -d /tmp':
  cmd.run
'mv /tmp/gtk-master /usr/share/themes/Dracula':
  cmd.run

cleaned-dracula:
  file.absent:
    - name: /tmp/dracula.zip
{%- endif %}
