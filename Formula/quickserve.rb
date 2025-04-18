class Quickserve < Formula
  desc "Quick and simple HTTP file server"
  homepage "https://github.com/pythonSnake5036/quickserve"
  url "https://github.com/pythonSnake5036/quickserve/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "20a821fa4faecdfdf0d48e0800a6cd3262b06cbfc8efdc8407d6e17cbc4441bc"
  license ""

  bottle do
    root_url "https://github.com/pythonSnake5036/homebrew-tap/releases/download/quickserve-1.0.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "975ea49d00b0638899fab096797875e07a752e2fd061efc1a2d2bbe57f361d3e"
    sha256 cellar: :any_skip_relocation, ventura:       "aada819ac007735eff78259e32c107b773dcf046e753cb1efdd90fc5394ab845"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "f9981380576ae0bcea6d7e19cd39a6f666fb099ff15624fdc987175a4e27706e"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    shell_output(bin/"quickserve --help")
  end
end
