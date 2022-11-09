template-mail_precursor:
  qvm.template_installed:
    - name: debian-11-minimal

template-mail_qvm-clone:
  qvm.clone:
    - name: template-mail
    - source: debian-11-minimal
