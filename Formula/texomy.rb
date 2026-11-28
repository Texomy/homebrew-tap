class Texomy < Formula
  desc "Extract typed JSON from text with Texomy specs"
  homepage "https://texomy.com"
  version "1.0.0-rc.11"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.11/texomy-macos-arm64.tar.gz"
      sha256 "cc8348746b968bcfd52e04eae39fb31b931b2dcf9c7ced7b871a3802aeb1947c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.11/texomy-linux-x64.tar.gz"
      sha256 "28c0bf4a26f59dadfb58c276d9713992531dbe271618ff101d474c19dcc70f1f"
    end

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.11/texomy-linux-arm64.tar.gz"
      sha256 "1fc3334ede9cd3114e19495f00d5b65b889774a83b07919fcc3d65a8205c16e9"
    end
  end

  def install
    bin.install "texomy"
  end

  test do
    assert_match "texomy #{version}", shell_output("#{bin}/texomy --version")
  end
end
