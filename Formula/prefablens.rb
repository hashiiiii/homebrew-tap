class Prefablens < Formula
  desc "Semantic diff for UnityYAML assets"
  homepage "https://github.com/hashiiiii/PrefabLens"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-arm64.zip"
      sha256 "48bfd9975727e90e36f72f6ae6d4cc433e41330ca3e6f71da4e8987ec3d66e05"
    end
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-x64.zip"
      sha256 "26a17cc693f835cb47353f9b1f08a911407fd37620ced3e28737edbe2129615c"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-linux-x64.zip"
      sha256 "cef18ab3a30e7bccd3ae0d74e0988aac71d6ff5e3ea059db673f8fe409b2d088"
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
