class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.9-1"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.9-1-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "05db911ae3ae25bacc79b07d54b96a01c2fe79a5b8f2ae06692bebbae4231ee0"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
