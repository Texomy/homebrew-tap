class Texomy < Formula
  desc "Extract typed JSON from text with Texomy specs"
  homepage "https://texomy.com"
  version "1.0.0-rc.4"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.4/texomy-macos-arm64.tar.gz"
      sha256 "59d49d8d26b2cac788adef3fde5c6e3d3049f148351cbfc26d2c9f638f761032"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.4/texomy-linux-x64.tar.gz"
      sha256 "ff2a439374aa7a42e89056cda85fced5b79bfeb30cda558a66b7e7ffbff3f214"
    end

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.4/texomy-linux-arm64.tar.gz"
      sha256 "92d131079d3d9ec19517ed0777fdaed134e776da7b00515c0bd7f12d5ec718d1"
    end
  end

  def install
    bin.install "texomy"
  end

  test do
    assert_match "texomy #{version}", shell_output("#{bin}/texomy --version")
  end
end
