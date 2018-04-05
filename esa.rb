REPOSITORY_URL="https://github.com/m4kvn/homebrew-esa".freeze
HOMEBREW_ESA_VERSION="0.0.3".freeze

class Esa < Formula
  desc "Search esa's articles"
  homepage "https://github.com/m4kvn/homebrew-esa"
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_ESA_VERSION}.tar.gz"
  sha256 "2d1b36fe2ea7af5f8d76f977325845e0d5a27fa98875a91ea9d7593fffa0821b"
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
