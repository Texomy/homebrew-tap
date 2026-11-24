class Texomy < Formula
  desc "Extract typed JSON from text with Texomy specs"
  homepage "https://texomy.com"
  version "1.0.0-rc.7"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.7/texomy-macos-arm64.tar.gz"
      sha256 "78305854263cf645069aaadb0991e45cfbffde88540f9d6bc9df3e99808d1ad6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.7/texomy-linux-x64.tar.gz"
      sha256 "b0e782dcc980d951082b662a3216276580cdb1682f4c0e965d174288dff408ad"
    end

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.7/texomy-linux-arm64.tar.gz"
      sha256 "b0522ed4130a38e2d7b8523e0761f5b94c52d10044807ef59639fa32d91d7baa"
    end
  end

  def install
    bin.install "texomy"
  end

  test do
    assert_match "texomy #{version}", shell_output("#{bin}/texomy --version")
  end
end
