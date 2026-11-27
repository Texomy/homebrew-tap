class Texomy < Formula
  desc "Extract typed JSON from text with Texomy specs"
  homepage "https://texomy.com"
  version "1.0.0-rc.10"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.10/texomy-macos-arm64.tar.gz"
      sha256 "0118e78f1d00a158acc97d7a5a5e32bb894822d936247c7cc5350467cea9da56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.10/texomy-linux-x64.tar.gz"
      sha256 "eb8dff3b2ae8906e354ec094968d617db90860cd032afd7194ad0bdd8852f709"
    end

    on_arm do
      url "https://github.com/Texomy/texomy-releases/releases/download/v1.0.0-rc.10/texomy-linux-arm64.tar.gz"
      sha256 "f1fc0c0bdee8fc635ffef74d79bf60fa6a59685c2a03ed0332323f5daf8cf2f5"
    end
  end

  def install
    bin.install "texomy"
  end

  test do
    assert_match "texomy #{version}", shell_output("#{bin}/texomy --version")
  end
end
