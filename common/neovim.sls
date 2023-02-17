{% if grains['os'] == 'Debian' %}
'curl -LJ --proxy http://127.0.0.1:8082 https://github.com/neovim/neovim/releases/download/v0.8.3/nvim-linux64.deb -o /tmp/nvim-linux64.deb':
  cmd.run

neovim-hash-ok:
  file.managed:
    - name: /tmp/nvim-linux64.hashok.deb
    - source: /tmp/nvim-linux64.deb
    - source_hash: 0828910da0b532e7564b1d200645bd846e6b2e1d10aa3111e36b59c1521b16f0

neovim:
  pkg.installed:
    - sources:
      - neovim: /tmp/nvim-linux64.hashok.deb
{% elif grains['os'] == 'Fedora' %}
neovim:
  pkg.installed
{% endif %}
