REPOSITORY_URL="https://github.com/m4kvn/homebrew-esa".freeze
HOMEBREW_ESA_VERSION="0.7.6".freeze

class Esa < Formula
  desc "Search esa's articles"
  homepage "https://github.com/m4kvn/homebrew-esa"
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_ESA_VERSION}.tar.gz"
  sha256 "146bdbfc44343e2041b206e5ea0a26f464d2e636d367cbd2a4c950c78a6179b6"
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
