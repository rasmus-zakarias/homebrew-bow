class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.8-27"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.8-27-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "7b048dbf4bc2408fbb71d4c03368bd041f08edb56ab65a75c95c486010a957d4"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
