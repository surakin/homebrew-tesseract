cask "tesseract" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.10"
  sha256 arm:   "0cba879416330338bc6e9f7a2bd3e5ff783646fa475698e7be7d9bc2d0de120e",
         intel: "420d7fd4391993492308f8f4b98de181408ac85ae8fa7e4aec6c879763d9117d"

  url "https://github.com/surakin/tesseract/releases/download/v#{version}/Tesseract-#{version}-#{arch}.dmg"
  name "Tesseract"
  desc "Native desktop Matrix client, built on the Matrix Rust SDK"
  homepage "https://surakin.github.io/tesseract/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Tesseract.app"

  zap trash: [
    "~/Library/Application Support/Tesseract",
    "~/Library/Caches/Tesseract",
    "~/Library/Preferences/im.gnomos.tesseract.plist",
    "~/Library/Saved Application State/im.gnomos.tesseract.savedState",
  ]
end
