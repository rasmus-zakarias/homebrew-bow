class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.8-29"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.8-29-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "11c5a981f5beb9c22029becc29a9ea365f9ae897e6ddcf64aef33ac977677730"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
