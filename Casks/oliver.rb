cask "oliver" do
  version "0.1.574"
  sha256 "e504f3526cd3af5ded1481db00865b21e33abc57f5ccb58222e92bc52dda2694"

  url "https://github.com/ta-tools/oliver-release/releases/download/v#{version}/Oliver-#{version}-osx-arm64.dmg"
  name "Oliver"
  desc "AskWashU APIM Explorer — chat, MCP test bench, and local WashU API proxy"
  homepage "https://github.com/ta-tools/oliver-release"

  depends_on arch: :arm64

  app "Oliver.app"

  zap trash: [
    "~/Library/Application Support/Oliver",
    "~/Documents/Oliver",
  ]
end