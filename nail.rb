# nail.rb
class Nail < Formula
  desc "Noroutine Application InterLink"
  homepage "https://nail.lane.id"
  url "https://fs.noroutine.me/attic/dav/nail-0.0.11.tgz"
  sha256 "6b72c5e0ace957c91ac6163197a628ffc8eee684a4ef8645827cb9392aae9b7c" 
  version "0.0.11"
  
  depends_on "node"
  
  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
  test do
    system bin/"nail", "info"
  end
end