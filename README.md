# Shravan's Homebrew Taps

Personal Homebrew distribution tap for command-line tools maintained by Shravan Sunder.

## Install the tap

```shell
brew tap shravansunder/taps
```

## Available formulae

### codex-router

Install the local account and quota router for Codex CLI:

```shell
brew install shravansunder/taps/codex-router
```

The formula installs a prebuilt binary and supports Apple Silicon Macs only.

Some `codex-router` commands launch Codex CLI. Install Codex separately when using those commands:

```shell
brew install --cask codex
```

Router-owned runtime state remains outside Homebrew under `~/.codex-router`.
Installing or upgrading the formula does not start, stop, or replace a running router process.

## Update

```shell
brew update
brew upgrade codex-router
```

## Uninstall

```shell
brew uninstall codex-router
brew untap shravansunder/taps
```

Uninstalling the formula does not remove router-owned state under `~/.codex-router`.
