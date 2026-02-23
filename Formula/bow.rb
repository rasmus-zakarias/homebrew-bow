class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.2.0-0"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.2.0-0-go1.26.0-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "3bb471ac527fe82f89973876fec8e4c166a777af74b12e5500b8f4c994de84d9"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
