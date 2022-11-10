# Salt & Pepper

My Qubes SaltStack configuration for automated template deployments.

## Templates

- **template-mail** (neomutt)
- **template-browser** (brave, firefox, lynx)

### Common stuff

- **st terminal** (with firacode font)

## Install

Clone repository contents into `/srv/salt` in *dom0* (caution!) and
enable the desired top-files:

```
qubesctl top.enable template-example
qubesctl --show-output --targets template-example state.highstate
```

## TODO:

- Automate other templates
- Shell setup
