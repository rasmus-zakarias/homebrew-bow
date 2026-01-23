class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.9-1"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.9-1-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "e21d1ba9fec1b7e32c5746acf6f273543685075a8c8d91d98dcd3b1cfd821efd"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
