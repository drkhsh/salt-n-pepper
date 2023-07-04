net-utils-install:
  pkg.installed:
    - pkgs:
      - wget
      - curl
      - whois
      - telnet
{% if grains['os_family']|lower == 'debian' %}
      - iputils-ping
      - iputils-tracepath
      - dnsutils
      - ncat
{% else %}
      - iputils
      - bind-utils
      - nmap-ncat
{% endif %}
      - tcpdump
      - iftop

