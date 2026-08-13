class Warrn < Formula
  desc "Manage Warrn alerts, incidents, and on-call from your terminal"
  homepage "https://warrn.io"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/warrnio/cli/releases/download/v0.1.7/warrn_Darwin_arm64.tar.gz"
      sha256 "5065b25c1e634beccc5e1162caa9f7641f0339abd4b770f0e751270ca65c107b"
    else
      url "https://github.com/warrnio/cli/releases/download/v0.1.7/warrn_Darwin_x86_64.tar.gz"
      sha256 "184ece8ea5d3dc5298a6e56af1e26417d783f4ebcc0105686af99cc2f1b26c01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/warrnio/cli/releases/download/v0.1.7/warrn_Linux_arm64.tar.gz"
      sha256 "1094a85c306605ddfecdaadaebe1ea22ca67cd3f82fd141d7696e5e6e92f8c6b"
    else
      url "https://github.com/warrnio/cli/releases/download/v0.1.7/warrn_Linux_x86_64.tar.gz"
      sha256 "69391940793653891af7cef45820c040d4b453221a2a49b90965296b7f3e1dc2"
    end
  end

  def install
    bin.install "warrn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/warrn --version")
  end
end
