template-wireguard_update:
  pkg.uptodate:
    - refresh: True

template-wireguard_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - wireguard
      - wireguard-tools
      - resolvconf
    - skip_suggestions: True
    - install_recommends: False

template-wireguard_wg-service:
  service.enabled:
    - name: wg-quick@wg0.service

'ln -sf /rw/config/wireguard/wg0.conf /etc/wireguard/wg0.conf':
  cmd.run

