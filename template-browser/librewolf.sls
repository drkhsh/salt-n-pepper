{% if grains['os_family']|lower == 'debian' %}
/usr/share/keyrings/librewolf.gpg:
  file.managed:
    - source: salt://template-browser/librewolf.gpg

/etc/apt/sources.list.d/librewolf.sources:
  file.managed:
    - source: salt://template-browser/librewolf.sources
    - template: jinja
{% else %}
'dnf config-manager --add-repo https://rpm.librewolf.net/librewolf-repo.repo':
  cmd.run
{% endif %}

librewolf-updated:
  pkg.uptodate:
    - refresh: True

librewolf:
  pkg.installed

