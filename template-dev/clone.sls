template-dev_precursor:
  qvm.template_installed:
    - name: debian-11-minimal

template-dev_qvm-clone:
  qvm.clone:
    - name: template-dev
    - source: debian-11-minimal
