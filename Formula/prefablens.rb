class Prefablens < Formula
  desc "Semantic diff for UnityYAML assets"
  homepage "https://github.com/hashiiiii/PrefabLens"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-arm64.zip"
      sha256 "2a746c88b567ee657273c50175a8aba41ae55bd910abf261aa6de6aaca905bb7"
    end
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-x64.zip"
      sha256 "d4628753e9f9a365ffcd3035b1e69c3cd2da48a6ea5c7279d4ba81d2f7913ad0"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-linux-x64.zip"
      sha256 "990c77b9e74991240ff1a97a229d7305f441a5654573a4537113f3fe6c967136"
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
