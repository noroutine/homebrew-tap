# nail.rb
class Nail < Formula
  desc "Noroutine Application InterLink"
  homepage "https://nail.lane.id"
  url "https://fs.noroutine.me/attic/dav/nail-0.0.10.tgz"
  sha256 "bfc5a75c61997554f4c13e6dd7eef7752859df555116718d04cb80a88ad414fd" 
  version "0.0.10"
  
  depends_on "node"
  
  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
  test do
    system bin/"nail", "info"
  end
end