{%- if not salt['file.directory_exists' ]('/usr/share/icons/Gruvbox') %}
'curl --proxy http://127.0.0.1:8082/ https://github.com/SylEleuth/gruvbox-plus-icon-pack/releases/download/v3.1/gruvbox-plus-icon-pack-3.1.zip -o /tmp/gruvbox.zip':
  cmd.run
'unzip /tmp/gruvbox.zip -d /usr/share/icons/Gruvbox':
  cmd.run

cleaned-gruvbox:
  file.absent:
    - name: /tmp/gruvbox.zip
{%- endif %}
