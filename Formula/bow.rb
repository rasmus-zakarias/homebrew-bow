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
      sha256 "517fefdf5a693ef6063bb26c041b4e3c5a61e2537451644df7a6c1c4883492ec"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
