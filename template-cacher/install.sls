template-cacher_update:
  pkg.uptodate:
    - refresh: True

template-cacher_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - apt-cacher-ng
    - skip_suggestions: True
    - install_recommends: False

'systemctl mask apt-cacher-ng'
  cmd.run
