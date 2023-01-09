template-openvpn_update:
  pkg.uptodate:
    - refresh: True

template-openvpn_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - qubes-core-agent-network-manager
      - network-manager-openvpn
      - network-manager-openvpn-gnome
      - openvpn
    - skip_suggestions: True
    - install_recommends: False

