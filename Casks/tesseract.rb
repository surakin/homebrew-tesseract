cask "tesseract" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.4"
  sha256 arm:   "24a477f2e2867ce66d9dceb989929d74898984efe59d834cb82c8ffb980b1576",
         intel: "09c7aa011df51f0d114bacea40c3cd47c01e158d1a80e8ff5a57852c64391f10"

  url "https://github.com/surakin/tesseract/releases/download/v#{version}/Tesseract-#{version}-#{arch}.dmg"
  name "Tesseract"
  desc "The native desktop Matrix client you always wanted."
  homepage "https://surakin.github.io/tesseract/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Tesseract.app"

  zap trash: [
    "~/Library/Application Support/Tesseract",
    "~/Library/Caches/Tesseract",
    "~/Library/Preferences/im.gnomos.tesseract.plist",
    "~/Library/Saved Application State/im.gnomos.tesseract.savedState",
  ]
end

