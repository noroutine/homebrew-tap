# nail.rb
class Nail < Formula
  desc "Noroutine Application InterLink"
  homepage "https://nail.lane.id"
  url "https://fs.noroutine.me/attic/dav/noroutine-nail-0.0.21.tgz"
  sha256 "ab3486ee2f801dfd87b4f919d23c158f1c04bb81e38dda1f4a903a8cf804f048"
  version "0.0.21"
  
  depends_on "node"
  
  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
  test do
    system bin/"nail", "info"
  end
end