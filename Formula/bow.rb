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
      sha256 "a8773e843f8c099afb20c99cfc9ce096afebc0ac3e8ead1c0e87d1448e6a15e5"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
