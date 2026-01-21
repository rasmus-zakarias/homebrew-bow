class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.9-0"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.9-0-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "f3297b00904e599215ca7f8eae334f79dd819c90482b671fe95143bf3bb63533"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
