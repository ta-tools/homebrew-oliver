cask "oliver" do
  version "0.1.583"
  sha256 "31514f5177e7d76232edfb4d0e19780106de969563c3fec483e2cab6ba3c36db"

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