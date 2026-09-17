# Homebrew tap for Codenotch Safe

This private tap installs the audited Codenotch Safe macOS application.

```sh
brew tap x950827/tap git@github.com:x950827/homebrew-tap.git
HOMEBREW_GITHUB_API_TOKEN="$(gh auth token)" \
  brew install --cask x950827/tap/codenotch-safe
```

Both repositories are private. The SSH URL authenticates the tap checkout, and
the process-local GitHub token authorizes only the release download. Homebrew
masks the token during Cask evaluation and download.

The application is ad-hoc signed and not notarized. On first launch, macOS may require **System Settings → Privacy & Security → Open Anyway**.

Source, license, audit, and release notes: https://github.com/x950827/codenotch-safe
