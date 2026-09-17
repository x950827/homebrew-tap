cask "codenotch-safe" do
  version "1.6.0-safe.13"
  sha256 "57b9327ccdf6c45cc474535678a073da7aa89099c99af03bbc383c6f7f1ac4b9"

  url "https://api.github.com/repos/x950827/codenotch-safe/releases/assets/570648547",
      header: [
        "Accept: application/octet-stream",
        "Authorization: Bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN")}",
        "X-GitHub-Api-Version: 2022-11-28",
      ]
  name "Codenotch Safe"
  desc "Audited Claude, Cursor, and Codex usage monitor"
  homepage "https://github.com/x950827/codenotch-safe"

  depends_on macos: ">= :sequoia"

  container type: :dmg
  app "Codenotch Safe.app"

  caveats <<~EOS
    This build is ad-hoc signed and is not notarized by Apple.
    If macOS blocks its first launch, use System Settings > Privacy & Security > Open Anyway.
    Do not disable Gatekeeper globally.
  EOS
end
