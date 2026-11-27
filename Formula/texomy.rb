class Texomy < Formula
  desc "Extract typed JSON from text with Texomy specs"
  homepage "https://texomy.com"
  version "1.0.0-rc.9"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.9/texomy-macos-arm64.tar.gz"
      sha256 "96e01166603bef42ed364a86be93e713889a1d2f199ac9069cf7d74b3244e88f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.9/texomy-linux-x64.tar.gz"
      sha256 "1fa3f4afc06dc9838e02c04e199b566ca4d6e53b8ece01d010503714641b574d"
    end

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.9/texomy-linux-arm64.tar.gz"
      sha256 "372f1fd96b8805d0e36542e098f02c6510ea9efc8307d0e9c2b8b369ce0c1f79"
    end
  end

  def install
    bin.install "texomy"
  end

  test do
    assert_match "texomy #{version}", shell_output("#{bin}/texomy --version")
  end
end
