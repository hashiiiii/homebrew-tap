class Prefablens < Formula
  desc "Semantic diff for UnityYAML assets"
  homepage "https://github.com/hashiiiii/PrefabLens"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-arm64.zip"
      sha256 "7bc08d6ce714f3735b986273c8f05890a3f6f7f679796e0d257db127373ee5dc"
    end
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-x64.zip"
      sha256 "ed69e6d9aeb9b74d35880e9fa73eb7fe6b2882da6fb2e6517dbe01abc7613ddb"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-linux-x64.zip"
      sha256 "d4e31b65b0833bc52ecaa8ec822321b08c9d6a486daac9d53353e2b6198fec17"
    end
  end

  def install
    bin.install "prefablens"
  end

  test do
    assert_match "usage: prefablens", shell_output("#{bin}/prefablens --help")
  end
end
