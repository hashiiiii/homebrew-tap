class Prefablens < Formula
  desc "Semantic diff for UnityYAML assets"
  homepage "https://github.com/hashiiiii/PrefabLens"
  version "0.10.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-arm64.zip"
      sha256 "e485431af2917c5885e07c25eb38026a5de1e4624b244451d51b3c4991108980"
    end
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-x64.zip"
      sha256 "6ccaf5859e4149aef8bf92d6649edb846df280c1815208f7604db0416f340242"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-linux-x64.zip"
      sha256 "f354beda550f153a551d1ce6db6b35786d67987e3320970dc389352ef7e42bb0"
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
