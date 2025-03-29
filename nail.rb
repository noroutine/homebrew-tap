# nail.rb
class Nail < Formula
  desc "Noroutine Application InterLink"
  homepage "https://nail.lane.id"
  url "https://fs.noroutine.me/attic/dav/noroutine-nail-0.0.19.tgz"
  sha256 "a5ce3f10a83e1598f36a1c763335ff4ca4177d760b17f7fcf4bc86ca412e4e00"
  version "0.0.19"
  
  depends_on "node"
  
  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
  test do
    system bin/"nail", "info"
  end
end