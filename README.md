# Salt & Pepper

My Qubes SaltStack configuration for automated template deployments.
This repository mostly exists for personal reference and sharing between
machines, however **feel free to steal some salt**.

Contains *a lot* of templates, specifically configured for my usecases,
used on two Qubes OS machines for personal and work use. Work-related
templates are stripped out (NDA blabla).

**Beware that some stuff may be very hacky, works on my machine(s)**.

## Install

First, enable user-directories for Salt on Qubes OS (to separate from
pre-installed formulas):

```
qubesctl top.enable qubes.user-dirs
qubesctl state.apply
```

Clone repository contents in a regular qube, then copy it to `dom0`, by
using [`git bundle`](https://git-scm.com/docs/git-bundle).

***WARNING: You are going to copy files from a qube directly into `dom0`! [This
is considered
unsafe](https://www.qubes-os.org/doc/copy-from-dom0/#copying-to-dom0) and can
compromise the security of your whole Qubes system. You have been warned.***

```
qvm-run --pass-io <target-qube> 'cd /path/to/salt-repo/ && git bundle create -
--all' > /tmp/salt.bundle
```

Finally, clone the bundle into the salt user dir (`/srv/user_salt/`):

```
cd /srv/user_salt/
git clone /tmp/salt.bundle .
```

Git's `origin` is now set to the bundle file, it can be deleted for now.

### Binaries

Place static `st` binary in `/srv/user_salt/bin/` (ignored by git).

## Deploy

Use `qubesctl` to enable and deploy states.

```
qubesctl top.enable template-example
qubesctl --targets template-example state.highstate
```

To apply all changed states, use:

`qubesctl --all state.highstate`

## Update

### To dom0

Since the `origin` in the cloned repository in `dom0` is set to the bundle file,
it's enough to get the newest bundle and `git pull` from it:

```
cd /srv/user_salt/
qvm-run --pass-io <target-qube> 'cd /path/to/salt-repo/ && git bundle create -
--all' > /tmp/salt.bundle
git pull # use --rebase if necessary
```

### From dom0

Commit the changes in dom0, and generate a patch bundle per commit:

```
git bundle create /tmp/salt.bundle --all -1 HEAD # or <sha>
```

Use `qvm-copy-to-vm` to get the bundle back to the target qube:

```
qvm-move-to-vm <target-qube> /tmp/salt.bundle
```

Then, in the relevant qube, check and apply the patch, and push to the upstream
repo:

```
cd /path/to/salt-repo
git pull ~/QuebesIncoming/dom0/salt.bundle # use --rebase if necessary
```

### dotfiles

Use `scripts/pull-dotfiles.sh` with `dotfiles` remote setup.

## Pillars

*theme.sls*:

```
theme:
  gtk: Dracula
  icons: Dracula
```

*shell.sls*:

```
shell: mksh
```

Include in top-file accordingly:

```
user:
  '*':
    - shell
    - theme
```

