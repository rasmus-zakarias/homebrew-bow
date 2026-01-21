class Bow < Formula
  desc "Plow through the muddy waters for shipping"
  homepage "https://github.com/rasmus-zakarias/bow"
  url "https://github.com/rasmus-zakarias/bow/archive/refs/tags/0.0.1.tar.gz"

  def install
    bin.install "bow"
  end
  
  test do
    assert_match "Chainlysis Bow", shell_output("#{bin}/bow", 2)
  end
end
