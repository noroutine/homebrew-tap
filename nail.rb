# nail.rb
class Nail < Formula
  desc "Noroutine Application InterLink"
  homepage "https://nail.lane.id"
  url "https://fs.noroutine.me/attic/dav/noroutine-nail-0.0.15.tgz"
  sha256 "9b9cbace71c4c4876c34a77a75856b166ab39a0d9a083320799ad1e47825fe80" 
  version "0.0.15"
  
  depends_on "node"
  
  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
  test do
    system bin/"nail", "info"
  end
end