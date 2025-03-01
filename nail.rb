# nail.rb
class Nail < Formula
  desc "Noroutine Application InterLink"
  homepage "https://nail.lane.id"
  url "https://fs.noroutine.me/attic/dav/nail-0.0.7.tgz"
  sha256 "b1fd2f1c184b2b53c50d80ff51d4be9339f53737478fd05dd2389e669ddbbf50" 
  version "0.0.7"
  
  depends_on "node"
  
  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
  test do
    system bin/"nail", "info"
  end
end