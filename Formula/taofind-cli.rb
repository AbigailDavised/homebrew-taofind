class TaofindCli < Formula
  desc "China Reverse Proxy Shopping Hub, 1688 Link Cleaner & Haul Shipping CLI"
  homepage "https://taofind.com"
  url "https://github.com/AbigailDavised/taofind-mcp/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "01d10ca6fda77b0324741ad1c087819066fc3ea9b2fa10e3e026285a7b93851c"
  license "MIT"

  depends_on "node"

  def install
    bin.install "bin/cli.js" => "taofind-cli"
    prefix.install Dir["*"]
  end

  test do
    system "#{bin}/taofind-cli", "--help"
  end
end
