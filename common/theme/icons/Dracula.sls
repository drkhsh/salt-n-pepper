{%- if not salt['file.directory_exists' ]('/usr/share/icons/Dracula') %}
'curl -LJ --proxy http://127.0.0.1:8082/ https://github.com/dracula/gtk/files/5214870/Dracula.zip -o /tmp/dracula.zip':
  cmd.run
'unzip -q /tmp/dracula.zip -d /usr/share/icons/':
  cmd.run

cleaned-dracula-icons:
  file.absent:
    - name: /tmp/dracula.zip
{%- endif %}
