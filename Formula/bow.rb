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
      sha256 "5ea273effa3217d0996c1a7b1a82ae094c7a16890a57e03ade1141b15deda02b"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
