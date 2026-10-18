# ============================================================================
# Saytrue Homebrew Cask
# ============================================================================
# Offizielles Cask für Saytrue - Sprache zu Text mit analysegestützter Umformulierung
#
# Installation: brew install --cask fidpa/saytrue/saytrue
#
# version und sha256 setzt mac-build.yml (Job update-homebrew) bei jedem Release;
# die Nullwerte unten gelten nur bis zum ersten Release.
# ============================================================================

cask "saytrue" do
  version "0.1.0"
  sha256 "bfb03a38c39b9052eabd4a103ffcd70b67df101c2f05d1903b06787e89af19e0"

  url "https://github.com/fidpa/saytrue-releases/releases/download/v#{version}/saytrue-#{version}-macos-universal-free.dmg"
  name "Saytrue"
  desc "Sprache zu Text mit lokaler Analyse und Umformulierung"
  homepage "https://github.com/fidpa/saytrue-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Saytrue.app"

  zap trash: [
    "~/Saytrue",
    "~/Library/Application Support/com.fidpa.saytrue",
    "~/Library/Caches/com.fidpa.saytrue",
    "~/Library/Logs/com.fidpa.saytrue",
    "~/Library/Preferences/com.fidpa.saytrue.plist",
    "~/Library/Saved Application State/com.fidpa.saytrue.savedState",
    "~/Library/WebKit/com.fidpa.saytrue",
  ]

  caveats <<~EOS
    Saytrue: Die rechten Worte finden.
  EOS
end
