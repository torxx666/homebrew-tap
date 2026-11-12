class Flik < Formula
  desc "Interactive terminal log explorer with smart filters and incident context"
  homepage "https://flik.spedo.dev"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/torxx666/flik/releases/download/v0.3.0/flik-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "b99d1566a4fda346631adc4ba382d29758e689d9aa20e19f4a6d0583db13f51c"
    else
      url "https://github.com/torxx666/flik/releases/download/v0.3.0/flik-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "6dd856f81ca38d80ec9d7746f0b9a152c484943550b311886c9213237a1be2f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/torxx666/flik/releases/download/v0.3.0/flik-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "08aaa31e560ae96700a0d4449d64f5f7bb8478aa4f9c2dbe07a9ac8e2927c813"
    else
      url "https://github.com/torxx666/flik/releases/download/v0.3.0/flik-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "47e732448b3666af94c911453e891d30e03f642bd931ff98104dc8ab5c861cca"
    end
  end

  def install
    bin.install "flik"
  end

  test do
    assert_match "flik #{version}", shell_output("#{bin}/flik --version")
  end
end
