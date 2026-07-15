class Prefablens < Formula
  desc "Semantic diff for UnityYAML assets"
  homepage "https://github.com/hashiiiii/PrefabLens"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-arm64.zip"
      sha256 "ab76a325bf19a07527abb0c4dc3b51c3bfa14176de408c82195f93f199251178"
    end
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-x64.zip"
      sha256 "37f2e021060fbb3aa6119e6b294b2b797e4231a91640461e1703d9b1ed0c0c55"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-linux-x64.zip"
      sha256 "93a90a2136b805c9754604cb48b1ddbd491a103c4d3343c19bdcfba76453724b"
    end
  end

  def install
    bin.install "prefablens"
  end

  test do
    assert_match "usage: prefablens", shell_output("#{bin}/prefablens --help")
  end
end
