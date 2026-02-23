class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.2.1-0"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.2.1-0-go1.26.0-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "d51d28d5a6f8ea502301c26ecfee366e9b06fd0ab632f660ed4bc95beb6d1123"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
