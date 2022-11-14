template-vault_precursor:
  qvm.template_installed:
    - name: debian-11-minimal

template-vault_qvm-clone:
  qvm.clone:
    - name: template-vault
    - source: debian-11-minimal
