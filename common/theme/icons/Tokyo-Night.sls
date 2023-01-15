'curl -LJ --proxy http://127.0.0.1:8082/ https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme/archive/refs/heads/master.zip -o /tmp/tokyo-night-icons.zip':
  cmd.run
cleaned-tokyo-night-icons:
  file.absent:
    - name: /usr/share/icons/Tokyo-Night
'unzip -q /tmp/tokyo-night-icons.zip "Tokyo-Night-GTK-Theme-master/icons/Tokyonight-Dark/*" -d /usr/share/icons':
  cmd.run
'mv /usr/share/icons/Tokyo-Night-GTK-Theme-master/icons/Tokyonight-Dark/ /usr/share/icons/Tokyo-Night':
  cmd.run

cleaned-tokyo-night-icons-repo:
  file.absent:
    - name: /usr/share/icons/Tokyo-Night-GTK-Theme-master
cleaned-tokyo-night-icons-zip:
  file.absent:
    - name: /tmp/tokyo-night-icons.zip
