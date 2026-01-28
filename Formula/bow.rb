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
      sha256 "6861bf8c4764d417259953b4d5a506fc19407ffa982bae140c317e1c0a490acb"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
