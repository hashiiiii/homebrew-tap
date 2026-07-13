class Prefablens < Formula
  desc "Semantic diff for UnityYAML assets"
  homepage "https://github.com/hashiiiii/PrefabLens"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-arm64.zip"
      sha256 "df27e3d26b28e81114b073518407c55e3cec2b2f032c9c59e75ed93b103c0d86"
    end
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-x64.zip"
      sha256 "19e5917e1972410d3094bfdebd2e8d57b8369bf08e154d749cf1075d005686b5"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-linux-x64.zip"
      sha256 "7609747e6549598a0448ab475e7213a217859edff6bbddee8fd53bf1ec404380"
    end
  end

  def install
    bin.install "prefablens"
  end

  test do
    assert_match "usage: prefablens", shell_output("#{bin}/prefablens --help")
  end
end
