REPOSITORY_URL="https://github.com/m4kvn/homebrew-esa".freeze
HOMEBREW_ESA_VERSION="0.0.4".freeze

class Esa < Formula
  desc "Search esa's articles"
  homepage "https://github.com/m4kvn/homebrew-esa"
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_ESA_VERSION}.tar.gz"
  sha256 "64711602557300317a31099aac104ea76ce8f49928b22aa0928beb5921465d81"
  head "#{REPOSITORY_URL}.git", :tag => HOMEBREW_ESA_VERSION

  depends_on "jq"
  depends_on "fzf"

  def install
    bin.install "bin/esa"
  end

  test do
    system "false"
  end
end
