REPOSITORY_URL="https://github.com/m4kvn/homebrew-esa".freeze
HOMEBREW_ESA_VERSION="0.6.5".freeze

class Esa < Formula
  desc "Search esa's articles"
  homepage "https://github.com/m4kvn/homebrew-esa"
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_ESA_VERSION}.tar.gz"
  sha256 "e9ef02d69c3c070d740025d9a8bff117b0b6a47d437f1de42d5745e9c1731f57"
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
