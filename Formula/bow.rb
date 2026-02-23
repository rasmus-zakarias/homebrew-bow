class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.2.0-0"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.2.0-0-go1.26.0-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "f11382514d487fcb936be528d3dc3f3a474396cc13a51affdadbfcaf7f29fb1d"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
