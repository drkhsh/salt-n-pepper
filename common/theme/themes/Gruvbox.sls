{%- if not salt['file.directory_exists' ]('/usr/share/themes/Gruvbox') %}
'curl --proxy http://127.0.0.1:8082/ https://github.com/TheGreatMcPain/gruvbox-material-gtk/archive/refs/heads/master.zip -o /tmp/gruvbox.zip':
  cmd.run
'unzip /tmp/gruvbox.zip -d /tmp/':
  cmd.run
'mv /tmp/gruvbox-material-gtk-master/themes/Gruvbox-Material-Dark /usr/share/themes/Gruvbox':
  cmd.run

cleaned-gruvbox-zip:
  file.absent:
    - name: /tmp/gruvbox.zip

cleaned-gruvbox-repo:
  file.absent:
    - name: /tmp/gruvbox-material-gtk-master
{%- endif %}
