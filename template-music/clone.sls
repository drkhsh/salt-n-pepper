template-music_precursor:
  qvm.template_installed:
    - name: debian-11-minimal

template-music_qvm-clone:
  qvm.clone:
    - name: template-music
    - source: debian-11-minimal
