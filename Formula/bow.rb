class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.9-10"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.9-10-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "17fd6e707c05eaa67175f5c65ebd94e44079029e2be6ae0023879afe4829104d"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
