'dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo':
  cmd.run

docker_updated:
  pkg.uptodate:
    - refresh: True

docker_installed:
  pkg.installed:
    - pkgs:
      - docker-ce
      - docker-ce-cli
      - containerd.io
      - docker-compose-plugin

'usermod -a -G docker user':
  cmd.run

/etc/docker:
  file.directory:
    - makedirs: True
    - user: root
    - group: root

docker_config_inplace:
  file.managed:
    - name: /etc/docker/daemon.json
    - source: salt://common/docker/daemon.json
    - user: root
    - group: root
    - mode: 644
    - replace: True

'systemctl enable docker':
  cmd.run

