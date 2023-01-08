qt-environment-fixes-set:
  file.append:
    - name: /etc/environment
    - text: |
        QT_QPA_PLATFORMTHEME=gtk2
        QT_SCALE_FACTOR=1

