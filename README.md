# homebrew-oliver — Homebrew tap for Oliver

Homebrew tap for **Oliver (AskWashU APIM Explorer)** on macOS (Apple Silicon).
The cask (`Casks/oliver.rb`) is kept current by the release pipeline
(`release-to-pkgs.sh`) and downloads the signed + **notarized** DMG from the
public mirror (`ta-tools/oliver-release`).

## Install

```bash
brew tap ta-tools/oliver
brew install --cask oliver
```

## Update / uninstall

```bash
brew upgrade --cask oliver
brew uninstall --cask oliver        # add --zap to also remove app data
```

## Requirements

- macOS on Apple Silicon (`arch: arm64`).
- Developer ID signed + notarized, so Gatekeeper opens it with no override.
  Verify: `spctl -a -vv /Applications/Oliver.app` → `source=Notarized Developer ID`.

> Source of truth (private): `ta-ai-es/askwashu-oliver`. Only the cask lives here.
