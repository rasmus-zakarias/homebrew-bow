class Mytool < Formula
  desc "Plow through the muddy waters for shipping"
  homepage "https://github.com/rasmus-zakarias/bow"
  url "https://github.com/myaccount/mytool/releases/download/v0.1.1/mytool.tar.gz"
  sha256 "<SHA256>"

  def install
    bin.install "bow"
  end
  
  test do
    assert_match "Chainlysis Bow", shell_output("#{bin}/bow", 2)
  end
end
