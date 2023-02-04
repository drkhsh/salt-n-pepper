{% if not grains['os_family']|lower == 'debian' %}
'curl -LJ --proxy http://127.0.0.1:8082 https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -o /tmp/rpmfusion.rpm':
  cmd.run

rpmfusion-free-hash-ok:
  file.managed:
    - name: /tmp/rpmfusion.hashok.rpm
    - source: /tmp/rpmfusion.rpm
    - source_hash: d69cb6cc926b98cac08e2f5a76119ddfa90e975efe1aa970093d4c32de9fe4c3

rpmfusion-free_repo:
  pkg.installed:
    - name: rpmfusion-free-release
    - sources:
      - rpmfusion-free-release: /tmp/rpmfusion.hashok.rpm

'dnf config-manager --set-enabled rpmfusion-free':
  cmd.run
{% endif %}
