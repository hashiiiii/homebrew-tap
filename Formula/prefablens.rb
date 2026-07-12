class Prefablens < Formula
  desc "Semantic diff for UnityYAML assets"
  homepage "https://github.com/hashiiiii/PrefabLens"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-arm64.zip"
      sha256 "3ee11f526e2a4b4594e3472dfdd0c8dc051f6de445789159ee5a15727ec1aa20"
    end
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-macos-x64.zip"
      sha256 "01a4fbde9588fbda7ddb92d69b982f0590d1f80d11538f20f2a21b774ea1f274"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/hashiiiii/PrefabLens/releases/download/v#{version}/prefablens-linux-x64.zip"
      sha256 "f823506117e59ed4ef3f2cc4ea0defd7a8262197cd7e89aa54e2b447564ae233"
    end
  end

  def install
    bin.install "prefablens"
  end

  test do
    # v0.4.0 predates --help; no operands prints usage on stderr and exits 2.
    assert_match "usage: prefablens", shell_output("#{bin}/prefablens 2>&1", 2)
  end
end
