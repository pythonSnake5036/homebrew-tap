class Quickserve < Formula
  desc "Quick and simple HTTP file server"
  homepage "https://github.com/pythonSnake5036/quickserve"
  url "https://github.com/pythonSnake5036/quickserve/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "20a821fa4faecdfdf0d48e0800a6cd3262b06cbfc8efdc8407d6e17cbc4441bc"
  license ""

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    shell_output(bin/"quickserve --help")
  end
end
