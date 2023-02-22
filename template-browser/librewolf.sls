'dnf config-manager --add-repo https://rpm.librewolf.net/librewolf-repo.repo':
  cmd.run

librewolf:
  pkg.installed

