class Prefablens < Formula
  desc "Semantic diff for UnityYAML assets"
  homepage "https://github.com/hashiiiii/PrefabLens"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-arm64.zip"
      sha256 "05228f0760489c6c26f564b250c225964fdedc51cd6ef2ba2f3ed856f390a91e"
    end
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-x64.zip"
      sha256 "c4fa3f3eb615990fdaeafabb1162b48dbaa038d014dfd365373aefbf3904f1f0"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-linux-x64.zip"
      sha256 "716fa21bebed680830df8b8eadbc250ebf9518100b59c6dc2cb2f04e8d43b347"
    end
  end

  def install
    bin.install "prefablens"
  end

  test do
    assert_match "usage: prefablens", shell_output("#{bin}/prefablens --help")
  end
end
