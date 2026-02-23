class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.2.0-0"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.2.0-0-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "6ef9d51fd9c8fe0d0eec8727a7cc6256172a6a0caff41ad80b86df5136aed632"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
