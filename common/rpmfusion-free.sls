rpmfusion-free_repo:
  pkg.installed:
    - name: rpmfusion-free-release
    - sources:
      - rpmfusion-free-release: salt:///common/rpmfusion-free-release-36.noarch.rpm

'dnf config-manager --set-enabled rpmfusion-free':
  cmd.run
