REPOSITORY_URL="https://github.com/m4kvn/homebrew-esa".freeze
HOMEBREW_ESA_VERSION="0.0.1".freeze

class Esa < Formula
  desc ""
  homepage REPOSITORY_URL
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_ESA_VERSION}.tar.gz"
  sha256 "c84a8d17591b23a1cfd5badec00e9b67210096607dc9102318252044eaa6fb3d"
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
