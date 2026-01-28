class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.10-1"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.10-1-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "e01be86dfcff6282b4a7dbb2c62abdeff6338b7467d1b1376f609dd63d0e97cd"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
