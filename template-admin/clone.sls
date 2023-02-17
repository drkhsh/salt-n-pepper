template-ssh_precursor:
  qvm.template_installed:
    - name: debian-11-minimal

template-ssh_qvm-clone:
  qvm.clone:
    - name: template-ssh
    - source: debian-11-minimal
