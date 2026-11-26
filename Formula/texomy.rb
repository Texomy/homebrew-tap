class Texomy < Formula
  desc "Extract typed JSON from text with Texomy specs"
  homepage "https://texomy.com"
  version "1.0.0-rc.8"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.8/texomy-macos-arm64.tar.gz"
      sha256 "24ab7ee700ac971b1a512c0d141434279f3d0c629c14c1ad6ff5dc93ed284b20"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.8/texomy-linux-x64.tar.gz"
      sha256 "b2f6c26e3c3346d787a6757357902c3abcc9eb38865522834d3f11778733a451"
    end

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.8/texomy-linux-arm64.tar.gz"
      sha256 "f9a6fce5859f48b4b1b41b0e12ec06e435f8bdfe066fa398daedf4aeb5ee5c2f"
    end
  end

  def install
    bin.install "texomy"
  end

  test do
    assert_match "texomy #{version}", shell_output("#{bin}/texomy --version")
  end
end
