class Jtoon < Formula
  desc "CLI tool to convert between JSON and TOON formats"
  homepage "https://github.com/Kalowave/jtoon"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kalowave/jtoon/releases/download/v0.1.0/jtoon-aarch64-apple-darwin.tar.gz"
      sha256 "4f14d9551ef8d871fe2de5af1f51b43c2b8d5fb5a8078a30429ba5920a9f0a7e"
    else
      url "https://github.com/Kalowave/jtoon/releases/download/v0.1.0/jtoon-x86_64-apple-darwin.tar.gz"
      sha256 "16baeef742e4666d359b1de6f269eb8218f655179b52fb21fc9d936d72749f0a"
    end
  end

  on_linux do
    url "https://github.com/Kalowave/jtoon/releases/download/v0.1.0/jtoon-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fa36dfc043bb27749499f08eae7ac3216e25e3351346f21e65a4c67c0d4cd94a"
  end

  def install
    bin.install "jtoon"
  end

  test do
    assert_match "hello", pipe_output("#{bin}/jtoon", '{"msg":"hello"}')
  end
end
