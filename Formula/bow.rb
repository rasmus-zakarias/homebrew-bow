class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.10-41"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.10-41-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "e244c79b482c156d2e80cfb926bc5f5c43eeee4c5f33aac6b593eeeb5262d2c5"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
