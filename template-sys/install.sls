template-sys_update:
  pkg.uptodate:
    - refresh: True

template-sys_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-dom0-updates
      - qubes-core-agent-network-manager
      - qubes-core-agent-networking
      - qubes-core-agent-passwordless-root
      - qubes-mgmt-salt-vm-connector
      - qubes-input-proxy-sender
      - qubes-usb-proxy
      # wifi drivers
      - firmware-iwlwifi
      # net debugging
      - tcpdump
      - telnet
      - nmap
      - ncat
      # disks etc.
      - smartmontools
      - exfat-utils
      - dosfstools
      - ntfs-3g
    - skip_suggestions: True
    - install_recommends: False

template-sys_macrandomize:
  file.managed:
    - name: /etc/NetworkManager/conf.d/00-macrandomize.conf
    - source: salt://template-sys/00-macrandomize.conf
    - user: root
    - group: root

template-sys_dhclient:
  file.managed:
    - name: /etc/NetworkManager/conf.d/10-dhclient.conf
    - source: salt://template-sys/10-dhclient.conf
    - user: root
    - group: root

template-sys_dhclient-conf:
  file.managed:
    - name: /etc/dhcp/dhclient.conf
    - source: salt://template-sys/dhclient.conf
    - user: root
    - group: root

