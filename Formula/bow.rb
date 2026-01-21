class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.8-26"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.8-26-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "e57b50aa0c6b49cae133252fc76137dcdb46e7949dc31af1009d61378359a48f"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
