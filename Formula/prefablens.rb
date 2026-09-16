class Prefablens < Formula
  desc "Semantic diff for UnityYAML assets"
  homepage "https://github.com/hashiiiii/PrefabLens"
  version "0.10.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-arm64.zip"
      sha256 "22715ec6d409581bba30b03b75fd858f3d09766c1f9f3854363606cb94c3c9b8"
    end
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-x64.zip"
      sha256 "42e106d106357d4141f82da2fd6d9cd12b727cbff984f4c7e96f61c9916ecb14"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-linux-x64.zip"
      sha256 "324819996a1a0f2fd5198ad0c552b38b25935fa3daebb8b339a540d734e87b4a"
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
