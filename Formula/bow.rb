class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.11-1"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.11-1-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "02b36e9bfd750d5b2f9aabdd507e957b652b9463e38dfbd935fc669efe04c778"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
