template-dev_update:
  pkg.uptodate:
    - refresh: True

template-dev_install-buildtools:
  pkg.installed:
    - pkgs:
      - build-essential

template-dev_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - qubes-core-agent-thunar
      - qubes-app-shutdown-idle
      - qubes-gpg-split
      - qubes-usb-proxy
      # tools
      - git
      - tig
      - tree
      - wget
      - curl
      - neofetch
      - vim-gtk3 # x11 clipboard
      - bsdextrautils
      - bsdgames
      - 9base
      - openssh-client
      - mosh
      - tmux
      # dotfiles
      - stow
      # ascii art
      - figlet
      # dwm, slstatus, st etc.
      - libxinerama-dev
      - libx11-dev
      - libxft-dev
      - libharfbuzz-dev
      - libxrandr-dev # slock
      - libimlib2-dev
      # coreboot, heads etc.
      - gnat
      - flex
      - bison
      - libncurses5-dev
      - zlib1g-dev
      - python3
      - nasm
      # usbarmory / gokey
      - golang-1.18 # backports
      - signify-openbsd
      - binutils-arm-none-eabi
      - u-boot-tools
      # appimages / obsidian
      - fuse
      - libnss3-dev
      - libasound2-dev
      # man pages
      - manpages-dev
      # iso images
      - genisoimage
      # python
      python3-pip
      # yocto, android etc.
      - repo
      # shell
      - shellcheck
    - skip_suggestions: True
    - install_recommends: False

template-dev_mimeapps:
  file.managed:
    - name: /usr/share/applications/mimeapps.list
    - source: salt://template-dev/mimeapps.list
    - user: root
    - group: root

'update-alternatives --install /usr/bin/go go /usr/lib/go-1.18/bin/go 50 --slave /usr/bin/gofmt gofmt /usr/lib/go-1.18/bin/gofmt':
  cmd.run
