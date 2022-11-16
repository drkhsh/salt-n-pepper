# Salt & Pepper

My Qubes SaltStack configuration for automated template deployments.

## Templates

- **template-mail** (neomutt)
- **template-browser** (brave, firefox, lynx)
- **template-snap** (snapd)
- **template-office** (gimp, inkscape, sxiv, libreoffice, ...)
- **template-vault** (split-{ssh,gpg}, nitrokey, pass)
- **template-sys** (qubes sys-* stuff)

### Common stuff

- base tools (pciutils, vim, less, psmisc, mksh)
- **st terminal** (with firacode font)

## Install

First, enable user-directories for Salt on Qubes OS (to separate from
pre-installed formulas):

```
qubesctl top.enable qubes.user-dirs
qubesctl state.apply
```

Clone repository contents into `/srv/user_salt` in *dom0* (caution!)
and enable the desired top-files:

```
qubesctl top.enable template-example
qubesctl --show-output --targets template-example state.highstate
```

## TODO:

- Automate other templates
	- mgmt-dvm
- Shell setup
- vault: Dunst setup
