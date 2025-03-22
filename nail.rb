# nail.rb
class Nail < Formula
  desc "Noroutine Application InterLink"
  homepage "https://nail.lane.id"
  url "https://fs.noroutine.me/attic/dav/noroutine-nail-0.0.14.tgz"
  sha256 "16758e0736f8321f5831e7e537f539f4b7d36d69dc66281a8110825eccdc67ea" 
  version "0.0.14"
  
  depends_on "node"
  
  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
  test do
    system bin/"nail", "info"
  end
end