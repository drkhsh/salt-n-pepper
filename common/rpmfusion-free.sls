{% if not grains['os_family']|lower == 'debian' %}
'curl -LJ --proxy http://127.0.0.1:8082 https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -o /tmp/rpmfusion.rpm':
  cmd.run

rpmfusion-free-hash-ok:
  file.managed:
    - name: /tmp/rpmfusion.hashok.rpm
    - source: /tmp/rpmfusion.rpm
    - source_hash: f2052ee66b87020050a001e9b47e0d2c0021947372128b7abbbb478f6fa4b5a4

rpmfusion-free_repo:
  pkg.installed:
    - name: rpmfusion-free-release
    - sources:
      - rpmfusion-free-release: /tmp/rpmfusion.hashok.rpm

'dnf config-manager --set-enabled rpmfusion-free':
  cmd.run
{% endif %}
