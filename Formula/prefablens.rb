class Prefablens < Formula
  desc "Semantic diff for UnityYAML assets"
  homepage "https://github.com/hashiiiii/PrefabLens"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-arm64.zip"
      sha256 "8a6becdfa41f47841300e52058250a5487ef8d9fdc824b6807c0d950f9e1fa9c"
    end
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-x64.zip"
      sha256 "d55497044ed66a7cdd22df3871202006ba871759c4ecd5cf694c9d163da07f95"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-linux-x64.zip"
      sha256 "e73274487b7f90fd5fffa5ec39c2f03122599fef384419fa7b4bf19eb808c7ce"
    end
  end

  def install
    bin.install "prefablens"
  end

  test do
    assert_match "usage: prefablens", shell_output("#{bin}/prefablens --help")
  end
end
