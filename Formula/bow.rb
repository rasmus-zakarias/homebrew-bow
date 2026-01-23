class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.9-2"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.9-2-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "6f175d868073faeb8efaefd4baf4a313dd4a07aa6cf41fcac7c64dc8821f9c6a"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
