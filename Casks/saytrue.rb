# ============================================================================
# Saytrue Homebrew Cask
# ============================================================================
# Offizielles Cask für Saytrue (Free): schlägt eine wärmere Fassung vor, wenn ein
# Satz härter klingt als gemeint. Texte: docs/how-to/porting/macos/HOMEBREW_LISTING.md
# im Quell-Repo.
#
# Installation: brew install --cask fidpa/saytrue/saytrue
#
# version und sha256 setzt mac-build.yml (Job update-homebrew) bei jedem Release;
# alles andere hier wird nur von Hand geändert.
# ============================================================================

cask "saytrue" do
  version "0.3.0"
  sha256 "63e3f3f175a403e2b6bcb8322e11ca2284f54f2c4eaf02f4d980809e586c1ae9"

  url "https://github.com/fidpa/saytrue-releases/releases/download/v#{version}/saytrue-#{version}-macos-universal-free.dmg"
  name "Saytrue"
  desc "Rephrase sentences that sound harsher than you meant, optionally fully local"
  homepage "https://saytrue.de/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Saytrue.app"

  zap trash: [
    "~/Library/Application Support/com.fidpa.saytrue",
    "~/Library/Application Support/Saytrue",
    "~/Library/Caches/com.fidpa.saytrue",
    "~/Library/Logs/com.fidpa.saytrue",
    "~/Library/Preferences/com.fidpa.saytrue.plist",
    "~/Library/Saved Application State/com.fidpa.saytrue.savedState",
    "~/Library/WebKit/com.fidpa.saytrue",
    "~/Saytrue",
  ]

  caveats <<~EOS
    Saytrue needs a language model: Ollama on this Mac, Apple Intelligence
    (macOS 26 or later) or a cloud provider. The app guides you on first launch.
    Setup guide: https://saytrue.de/en/setup/
  EOS
end
