template-cache_update:
  pkg.uptodate:
    - refresh: True

template-cache_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - apt-cacher-ng
    - skip_suggestions: True
    - install_recommends: False

'cachertemctl mask apt-cacher-ng'
  cmd.run
