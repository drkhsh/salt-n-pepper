# required dependency
python3-apt:
  pkg.installed

backports-repo:
  pkgrepo.managed:
    - humanname: Debian Bullseye Backports
    - name: deb http://deb.debian.org/debian bullseye-backports main contrib non-free

