class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.11-0"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.11-0-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "9aeca62a248c7096f724d331f0535a10bde39f9473c2ee36f51c28909d454793"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
