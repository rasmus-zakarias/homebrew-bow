class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.8-28"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.8-28-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "57a25a5096b520d31176a53403d926fa5851f5c403048e054d83f4dd1ac4e212"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
