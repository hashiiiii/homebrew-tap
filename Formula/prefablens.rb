class Prefablens < Formula
  desc "Semantic diff for UnityYAML assets"
  homepage "https://github.com/hashiiiii/PrefabLens"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-arm64.zip"
      sha256 "11945896324fb3fc1369d2656e8fd2b5bf358cfa3a5294b53624b04274eca6ce"
    end
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-x64.zip"
      sha256 "44e3190a4835d097522d12613a0bd129b11a6eb3186dc580b5bb2de256aed669"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-linux-x64.zip"
      sha256 "09c52082def672d0cbb424482ef4bad071f980ce89c0b7fa3496b6576e203b00"
    end
  end

  def install
    bin.install "prefablens", "git-merge-prefablens"
  end

  test do
    ENV.prepend_path "PATH", bin
    assert_equal "prefablens #{version}\n", shell_output("#{bin}/prefablens --version")
    assert_equal "prefablens merge-strategy #{version}\n", shell_output("#{bin}/git-merge-prefablens --version")
  end
end
