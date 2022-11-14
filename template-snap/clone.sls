template-snap_precursor:
  qvm.template_installed:
    - name: debian-11-minimal

template-snap_qvm-clone:
  qvm.clone:
    - name: template-snap
    - source: debian-11-minimal
