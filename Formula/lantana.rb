class Lantana < Formula
  desc "Terminal viewer for Git patches"
  homepage "https://github.com/hashiiiii/Lantana"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hashiiiii/Lantana/releases/download/v#{version}/lantana-macos-arm64.zip"
      sha256 "e00bdc6e704b7d60dc3d98bedd186b3170515ba691f3aba6337b1856a5ed5dca"
    end
    on_intel do
      url "https://github.com/hashiiiii/Lantana/releases/download/v#{version}/lantana-macos-x64.zip"
      sha256 "39a56eecab5072747b6c0dad2905706cb34038fbeb2a936a147f7f45bc8d5e26"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/hashiiiii/Lantana/releases/download/v#{version}/lantana-linux-arm64.zip"
      sha256 "bfa6ab501e000faefc90f9d19082060a8ac5ae4da3a0b596509a5a3138668763"
    end
    on_intel do
      url "https://github.com/hashiiiii/Lantana/releases/download/v#{version}/lantana-linux-x64.zip"
      sha256 "503569797e78b27beb8b99972ba35f758fc7d9c8915564aa00ecf2a3f65cd470"
    end
  end

  def install
    bin.install "lantana"
  end

  test do
    assert_equal "lantana #{version}\n", shell_output("#{bin}/lantana --version")
  end
end
