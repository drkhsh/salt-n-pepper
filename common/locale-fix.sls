{% if grains['os_family']|lower == 'debian' %}
'sed "/en_US.UTF-8/s/^#//g" -i /etc/locale.gen':
  cmd.run
'locale-gen':
  cmd.run
{% endif %}
