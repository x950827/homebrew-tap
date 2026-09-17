# Homebrew tap for Codenotch Safe

This tap installs the audited Codenotch Safe macOS application.

```sh
brew tap x950827/tap
brew install --cask x950827/tap/codenotch-safe
```

The application is ad-hoc signed and not notarized. After verifying the pinned release checksum, the cask removes quarantine only from the installed `Codenotch Safe.app`, so the Homebrew installation does not show the first-launch Gatekeeper warning.

Source, license, audit, and release notes: https://github.com/x950827/codenotch-safe
