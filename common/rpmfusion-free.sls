{% if not grains['os_family']|lower == 'debian' %}
'curl --proxy http://127.0.0.1:8082 https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -o /tmp/rpmfusion.rpm':
  cmd.run

rpmfusion-free_repo:
  pkg.installed:
    - name: rpmfusion-free-release
    - sources:
      - rpmfusion-free-release: /tmp/rpmfusion.rpm

cleaned-rpmfusion:
  file.absent:
    - name: /tmp/rpmfusion.rpm

'dnf config-manager --set-enabled rpmfusion-free':
  cmd.run
{% endif %}
