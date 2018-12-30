# JS experiments dev stack

## TL;DR

Clone or download / copy / paste the files from this repo, open terminal in chosen dir and :

```sh
make
```

## WHAT

This repo contains scripts to install and run required softwares for working locally on prototypes.

## PURPOSE

Mostly just for me to get up to speed on modern Javascript, and how to integrate various dev tools together.

## HOW

Using [CWT](https://github.com/Paulmicha/common-web-tools/).

## File structure

```txt
/path/to/project.instance/  ← Project root dir ($PROJECT_DOCROOT).
  ├── cwt/
  │   ├── app/              ← App-level tasks (e.g. fix permissions, watch, compile, etc.)
  │   ├── env/              ← Default global env. vars
  │   │   └── current/      ← [git-ignored] Generated global env. vars / Makefiles
  │   ├── extensions/       ← Contains CWT extensions. Remove or add according to project needs
  │   ├── git/              ← Integration of Git hooks with CWT hooks + Git-related utilities.
  │   │   └── samples/      ← [doc] Examples of git hooks implementations.
  │   ├── host/             ← Host-level metadata / crontab / network utils + "abstract" provision action
  │   ├── instance/         ← Actions related to the entire project instance (init, destroy, start, stop)
  │   ├── test/             ← Self-test entry point / automated tests actions
  │   │   └── cwt/          ← CWT 'core' internal tests (uses shunit2 - see 'vendor' dir)
  │   ├── utilities/        ← CWT internal functions (hides complexity)
  │   └── vendor/           ← Bundled third-party dependencies (only shunit2 by default)
  ├── scripts/              ← [configurable] default path to current project's scripts ($PROJECT_SCRIPTS)
  ├── web/                  ← [configurable] The app dir. Can be outside project dir ($APP_DOCROOT)
  └── .gitignore            ← Replace with your own and/or edit
```

## WHY

To experiment and evaluate various tools, as of sept.2018 - e.g. :

- [IEML](https://github.com/IEMLdev/ieml)
- [lando](https://docs.devwithlando.io) (or just stick to my usual `docker-compose` workflow)
- [ArangoDB](https://www.arangodb.com/)

## Preprequisites

- Local host or VM with **Bash shell version 4+** (e.g. MacOS : `brew update && brew install bash && sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells' && chsh -s /usr/local/bin/bash`)
- Git
- SSH keys generated & loaded in current terminal session
- Existing project
- GNU make
- Docker
- `docker-compose`

Currently tested on Debian "stretch" `9.5`.

## Usage / Getting started

```sh
# (re)Initialize local project instance :
make

# Start/stop auto-compilation (source files "watch" process) :
make start
make stop

# "One-shot" manual build (compilation) :
make build

# Cleanup local project instance (remove docker containers, volumes, networks
# - but not source files) :
make destroy
```
