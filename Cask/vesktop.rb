cask "vesktop" do
  version "1.5.3"
  sha256 "71e39434748e684a826f390ceb846d52ed1886bab8b5385c5d94c377e3ac1172"

  name "Vesktop"
  desc "Vesktop is a custom Discord desktop app"
  homepage "https://vencord.dev"
  url "https://vencord.dev/download/vesktop/universal/dmg"
  auto_updates true
  app "Vesktop.app"
  language "en", default: true do
    "en_US"
  end
  container type: :dmg
  caveats "Users should manually update in Vesktop, or enable automatic updates. However, if automatic updates fail, please navigate to https://vencord.dev/ and download a new installer."
  livecheck do
    url "https://github.com/Vencord/Vesktop"
    strategy :github_latest
  end
end
