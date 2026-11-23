class Texomy < Formula
  desc "Extract typed JSON from text with Texomy specs"
  homepage "https://texomy.com"
  version "1.0.0-rc.6"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.6/texomy-macos-arm64.tar.gz"
      sha256 "98d0d2f001985c9b726cf7fe8829514e9424490515fed2371ee799a25225543b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.6/texomy-linux-x64.tar.gz"
      sha256 "8e4d833a00bc3358717e1e7b16b225d80bdc0fd42551eb9b72421f8445ec646b"
    end

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.6/texomy-linux-arm64.tar.gz"
      sha256 "83f9ad9056187b009b9735df815dfe2274879643218eedc69e392ea119eb528a"
    end
  end

  def install
    bin.install "texomy"
  end

  test do
    assert_match "texomy #{version}", shell_output("#{bin}/texomy --version")
  end
end
