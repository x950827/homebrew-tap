cask "codenotch-safe" do
  version "1.6.0-safe.14"
  sha256 "b906604733182407ff463f849b40c74b9eed1af6827304d9520d7853f65b8a44"

  url "https://github.com/x950827/codenotch-safe/releases/download/v#{version}/Codenotch-Safe-#{version}-universal.dmg"
  name "Codenotch Safe"
  desc "Audited Claude, Cursor, and Codex usage monitor"
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
