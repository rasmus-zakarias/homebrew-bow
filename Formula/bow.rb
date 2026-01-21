class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.8-30"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.8-30-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "a4d3dfe5f60ed27d96df0480698c594d81417c375a1f817042340fa396714cfe"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
