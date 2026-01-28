class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.10-0"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.10-0-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "013c660db28568845cbffc0c3c8a0cdf456126bccf8a2ddddb31a5745e652103"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
