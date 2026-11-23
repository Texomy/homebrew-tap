class Texomy < Formula
  desc "Extract typed JSON from text with Texomy specs"
  homepage "https://texomy.com"
  version "1.0.0-rc.3"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.3/texomy-macos-arm64.tar.gz"
      sha256 "aa72c6cf46a851b4709f4372fbd582e448eedc6726f91c959653c69dee43bac1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.3/texomy-linux-x64.tar.gz"
      sha256 "efd6197191d2fd634e1641d172a9e6495947c83f30dc597f1c8e4249e7f2ac63"
    end

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.3/texomy-linux-arm64.tar.gz"
      sha256 "8f08ea4c66f7f74129ed4df1804354bfefc18eb85674f45dca6355b6e9745618"
    end
  end

  def install
    bin.install "texomy"
  end

  test do
    assert_match "texomy #{version}", shell_output("#{bin}/texomy --version")
  end
end
