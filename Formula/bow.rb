class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.10-35"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.10-35-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "24c335dafe9e062f16ca11ec5487797be4c8ad3edd310e56f503017069d7fd4c"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
