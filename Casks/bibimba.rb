cask "bibimba" do
  version "1.6.1"
  sha256 "3c471bc6566fa23c839557478eb84300f159c9c283cf2a6b8a5e71c67384801e"

  url "https://downloads.mamama.company/bibimba/downloads/#{version}/BiBimba-#{version}.dmg"
  name "BiBimba"
  desc "Clipboard manager with screenshot search and OCR"
  homepage "https://bibimba.mamama.company/"

  livecheck do
    url "https://downloads.mamama.company/bibimba/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "BiBimba.app"

  zap trash: [
    "~/Library/Application Support/dev.mamama.bibimba",
    "~/Library/Caches/dev.mamama.bibimba",
    "~/Library/HTTPStorages/dev.mamama.bibimba",
    "~/Library/Preferences/dev.mamama.bibimba.plist",
    # The license is stored in the Keychain on purpose. It is not listed here so
    # that `brew uninstall --zap` never deletes a paid license.
  ]
end
