REPOSITORY_URL="https://github.com/m4kvn/homebrew-esa".freeze
HOMEBREW_ESA_VERSION="0.8.7".freeze

class Esa < Formula
  desc "Search esa's articles"
  homepage "https://github.com/m4kvn/homebrew-esa"
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_ESA_VERSION}.tar.gz"
  sha256 "2a10a5e133cc736fe4f213cb2b02c354c1fd8c600dc82dcabb3c8126277ae9b9"
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
