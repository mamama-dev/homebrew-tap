cask "bibimba" do
  version "1.6.0"
  sha256 "6095ef273fa4eac886eead612220cad319375f5b4ead3e2f6d279e4b80515123"

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
  depends_on macos: ">= :tahoe"

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
