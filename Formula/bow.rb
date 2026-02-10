class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.10-40"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.10-40-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "bb964577af473cbd9c902dea51ced46876ffd1d731db78667cd5fb2374ee43d8"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
