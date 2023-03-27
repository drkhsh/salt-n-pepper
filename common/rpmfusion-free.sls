{% if not grains['os_family']|lower == 'debian' %}
'curl -LJ --proxy http://127.0.0.1:8082 https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -o /tmp/rpmfusion.rpm':
  cmd.run

rpmfusion-free-hash-ok:
  file.managed:
    - name: /tmp/rpmfusion.hashok.rpm
    - source: /tmp/rpmfusion.rpm
    - source_hash: b484f9c5c7799cc8a632d1e5f218c649105809c2dac8c40e2b39bb505cf2c602

rpmfusion-free_repo:
  pkg.installed:
    - name: rpmfusion-free-release
    - sources:
      - rpmfusion-free-release: /tmp/rpmfusion.hashok.rpm

'dnf config-manager --set-enabled rpmfusion-free':
  cmd.run
{% endif %}
