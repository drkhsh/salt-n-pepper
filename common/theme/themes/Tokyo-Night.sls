'curl -LJ --proxy http://127.0.0.1:8082/ https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme/archive/refs/heads/master.zip -o /tmp/tokyo-night.zip':
  cmd.run
cleaned-tokyo-night:
  file.absent:
    - name: /usr/share/themes/Tokyo-Night
'unzip -q /tmp/tokyo-night.zip "Tokyo-Night-GTK-Theme-master/themes/Tokyonight-Dark-B/*" -d /usr/share/themes':
  cmd.run
'mv /usr/share/themes/Tokyo-Night-GTK-Theme-master/themes/Tokyonight-Dark-B /usr/share/themes/Tokyo-Night':
  cmd.run

cleaned-tokyo-night-repo:
  file.absent:
    - name: /usr/share/themes/Tokyo-Night-GTK-Theme-master
cleaned-tokyo-night-zip:
  file.absent:
    - name: /tmp/tokyo-night.zip
