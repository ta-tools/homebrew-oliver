cask "oliver" do
  version "0.1.586"
  sha256 "3de407b16cd5a3020149ff82f931f440a675d8d64f394ed27530824c2c48b9a3"

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