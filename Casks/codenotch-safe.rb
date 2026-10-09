cask "codenotch-safe" do
  version "1.6.0-safe.17"
  sha256 "e65acd79d86658d215c8ff9b0e26fc29d6becca5e51bf4a771b453ae1066dda8"

  url "https://github.com/x950827/codenotch-safe/releases/download/v#{version}/Codenotch-Safe-#{version}-universal.dmg"
  name "Codenotch Safe"
  desc "Audited Claude, Cursor, Codex, and OpenCode Go usage monitor"
  homepage "https://github.com/x950827/codenotch-safe"

  depends_on macos: :sequoia

  app "Codenotch Safe.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Codenotch Safe.app"],
        sudo: false
  end

  caveats <<~EOS
    This build is ad-hoc signed and is not notarized by Apple.
    This cask removes quarantine only from the installed Codenotch Safe app.
    Homebrew verifies the release's pinned SHA-256 checksum before installation.
  EOS
end
