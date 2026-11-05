class Flik < Formula
  desc "Interactive terminal log explorer with smart filters and incident context"
  homepage "https://flik.spedo.dev"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/torxx666/flik/releases/download/v0.2.0/flik-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "9f87395eedc1c0ec41461f720649237dff08bf39a7d9454ab48d0b9363e22874"
    else
      url "https://github.com/torxx666/flik/releases/download/v0.2.0/flik-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "1f1623ea45c1f3ac4a910311138bc77d897cf1c900c5afd4d4e9d547f5db9faa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/torxx666/flik/releases/download/v0.2.0/flik-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1299f3ce4f3c057e7e1b778cda5fa8bfb722b25754b33bd11b9360aed120cac1"
    else
      url "https://github.com/torxx666/flik/releases/download/v0.2.0/flik-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "751fe7c5fc91d095bf397420e3d9991b19feb2f6ef9724ce75af49535fdcb995"
    end
  end

  def install
    bin.install "flik"
  end

  test do
    assert_match "flik #{version}", shell_output("#{bin}/flik --version")
  end
end
