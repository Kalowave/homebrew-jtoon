class Jtoon < Formula
  desc "CLI tool to convert between JSON and TOON formats"
  homepage "https://github.com/Kalowave/jtoon"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kalowave/jtoon/releases/latest/download/jtoon-aarch64-apple-darwin.tar.gz"
    else
      url "https://github.com/Kalowave/jtoon/releases/latest/download/jtoon-x86_64-apple-darwin.tar.gz"
    end
  end

  on_linux do
    url "https://github.com/Kalowave/jtoon/releases/latest/download/jtoon-x86_64-unknown-linux-gnu.tar.gz"
  end

  def install
    bin.install "jtoon"
  end

  test do
    assert_match "hello", pipe_output("#{bin}/jtoon", '{"msg":"hello"}')
  end
end
