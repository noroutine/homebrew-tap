# nail.rb
class Nail < Formula
  desc "Noroutine Application InterLink"
  homepage "https://nail.lane.id"
  url "https://fs.noroutine.me/attic/dav/nail-0.0.2.tgz"
  sha256 "c536bbb1b9711f8a89a03640e38210b359c4bc3878c6da6bce5d452bd8b5653c" 
  version "0.0.2"
  
  depends_on "node"
  
  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
  test do
    system bin/"nail", "info"
  end
end