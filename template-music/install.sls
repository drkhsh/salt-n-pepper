template-music_update:
  pkg.uptodate:
    - refresh: True

template-music_install:
  pkg.installed:
    - pkgs:
      - qubes-core-agent-networking
      - qubes-core-agent-passwordless-root
      - qubes-app-shutdown-idle
      - pulseaudio-qubes
      - mopidy
      - mopidy-mpd
      - mopidy-soundcloud
      - ncmpcpp
      - mpc
      - cava
      - python3-pip # mopidy-jellyfin
      - dbus-user-session # user mopidy service
    - skip_suggestions: True
    - install_recommends: False

