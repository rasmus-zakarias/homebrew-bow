class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.11-3"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.11-3-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "f551af6f031f0d47d5de945afc97139a35e608df74b26f5e03c0dd360b8b69aa"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
