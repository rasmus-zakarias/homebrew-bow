class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.10-42"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.10-42-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "0fc719f302d36daa262682d08154830078d8c7f9baba00ec03af45374fb601d4"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
