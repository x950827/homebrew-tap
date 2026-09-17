cask "codenotch-safe" do
  version "1.6.0-safe.13"
  sha256 "57b9327ccdf6c45cc474535678a073da7aa89099c99af03bbc383c6f7f1ac4b9"

  url "https://github.com/x950827/codenotch-safe/releases/download/v#{version}/Codenotch-Safe-#{version}-universal.dmg"
  name "Codenotch Safe"
  desc "Audited Claude, Cursor, and Codex usage monitor"
  homepage "https://github.com/x950827/codenotch-safe"

  depends_on macos: :sequoia
  app "Codenotch Safe.app"

  caveats <<~EOS
    This build is ad-hoc signed and is not notarized by Apple.
    If macOS blocks its first launch, use System Settings > Privacy & Security > Open Anyway.
    Do not disable Gatekeeper globally.
  EOS
end
