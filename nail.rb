# nail.rb
class Nail < Formula
  desc "Noroutine Application InterLink"
  homepage "https://nail.lane.id"
  url "https://fs.noroutine.me/attic/dav/noroutine-nail-0.0.18.tgz"
  sha256 "e4f1f2201e06a736b2301730e99521abd0e6812536cb062796ed61635717c252"
  version "0.0.18"
  
  depends_on "node"
  
  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
  test do
    system bin/"nail", "info"
  end
end