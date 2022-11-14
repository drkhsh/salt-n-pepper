template-office_precursor:
  qvm.template_installed:
    - name: debian-11-minimal

template-office_qvm-clone:
  qvm.clone:
    - name: template-office
    - source: debian-11-minimal
