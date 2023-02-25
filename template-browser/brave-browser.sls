{% if grains['os_family']|lower == 'debian' %}
/usr/share/keyrings/brave-browser-archive-keyring.gpg:
  file.managed:
    - source: salt://template-browser/brave-browser.gpg

brave-browser-repo:
  pkgrepo.managed:
    - humanname: Brave Browser Repository
    - name: deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main
{% else %}
brave-browser-key:
  file.managed:
    - name: /home/user/brave-core.asc
    - source: salt://template-browser/brave-core.asc
    - user: root
    - group: root
    - mode: 644

brave-browser-repo:
  pkgrepo.managed:
    - humanname: Brave Browser
    - baseurl: https://brave-browser-rpm-release.s3.brave.com/$basearch
    - gpgkey: file:///home/user/brave-core.asc
    - gpgcheck: 1
{% endif %}

brave-browser-updated:
  pkg.uptodate:
    - refresh: True

brave-browser:
  pkg.installed

