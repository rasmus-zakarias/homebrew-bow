class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.11-4"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.11-4-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "b1c7e52dd1e312d27a837656ddf3d983e34d19a8b473791126e4648044e930dd"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
