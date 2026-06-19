cask "oliver" do
  version "0.1.590"
  sha256 "5bd86c05645b4c21437a5674823885d54b986498c452609f260129891a9a5c2c"

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