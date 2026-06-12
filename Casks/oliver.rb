cask "oliver" do
  version "0.1.583"
  sha256 "d6f404b6d81d6729bcf9d6048f75f218ab12981c303c9c1b8e2e9ddfe62948bd"

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