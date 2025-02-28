# nail.rb
class Nail < Formula
  desc "Noroutine Application InterLink"
  homepage "https://nail.lane.id"
  url "https://fs.noroutine.me/attic/dav/nail-0.0.4.tgz"
  sha256 "760939dcf81474d1e2a471e670d403c7416175a3b5cccaed1f67f7336fe63a8f" 
  version "0.0.4"
  
  depends_on "node"
  
  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
  test do
    system bin/"nail", "info"
  end
end