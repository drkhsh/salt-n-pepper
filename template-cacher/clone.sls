template-cacher_precursor:
  qvm.template_installed:
    - name: debian-11-minimal

template-cacher_qvm-clone:
  qvm.clone:
    - name: template-cacher
    - source: debian-11-minimal
