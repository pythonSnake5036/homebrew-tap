class Quickserve < Formula
  desc "Quick and simple HTTP file server"
  homepage "https://github.com/pythonSnake5036/quickserve"
  url "https://github.com/pythonSnake5036/quickserve/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "4d5ae7f37b36f67a33225f5276a21a75d2bc8b2d27550e102039f18d7e8de0a9"
  license ""

  bottle do
    root_url "https://github.com/pythonSnake5036/homebrew-tap/releases/download/quickserve-1.1.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1b6dcbfd3ad441ce106fc593c10632150ef445e4a6cbe2a67f4b6ced9b006492"
    sha256 cellar: :any_skip_relocation, ventura:       "03a83f0c4e4ed7ddb30dfd55ccb19eeef50d529e1fb350348c5acd0525f1e630"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "2fadad7c5f07b0ede13c8d73ed11f7186a2639388ac13b1ffb2c4fb6ee1ff112"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    shell_output("#{bin/"quickserve"} -help")
  end
end
