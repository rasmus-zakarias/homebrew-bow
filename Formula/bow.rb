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
      sha256 "48af6b149f51a7c489f862834bc1a36e542a0d202321b6cb37562ae9acdf5055"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
