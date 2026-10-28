# liznear/homebrew-tap

Homebrew tap for personal projects: [Lia](https://github.com/liznear/lia) and
[YoYo](https://github.com/liznear/yoyo) (private source; installable casks).

## Install

Lia:

```bash
brew tap liznear/tap
brew install --cask lia
```

YoYo:

```bash
brew tap liznear/tap
brew install --cask yoyo
```

Upgrade:

```bash
brew upgrade --cask lia yoyo
```

## Casks

- [`Casks/lia.rb`](Casks/lia.rb) — Lia (macOS, Apple Silicon). Auto-updated by
  the release workflow in `liznear/lia` on every `v*` tag.
- [`Casks/yoyo.rb`](Casks/yoyo.rb) — YoYo (macOS 14+, Apple Silicon).
  Auto-updated by the release workflow in `liznear/yoyo` on every `v*` tag;
  the DMG is mirrored into this repo's Releases because the source repo is
  private.
