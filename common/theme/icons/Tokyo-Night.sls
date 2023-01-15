{%- if not salt['file.directory_exists' ]('/usr/share/icons/Tokyo-Night') %}
'curl -LJ --proxy http://127.0.0.1:8082/ https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme/archive/refs/heads/master.zip -o /tmp/tokyo-night-icons.zip':
  cmd.run
'unzip -q /tmp/tokyo-night-icons.zip "Tokyo-Night-GTK-Theme-master/icons/Tokyonight-Dark/*" -d /usr/share/icons/Tokyo-Night':
  cmd.run

cleaned-tokyo-night-icons-zip:
  file.absent:
    - name: /tmp/tokyo-night-icons.zip
{%- endif %}
