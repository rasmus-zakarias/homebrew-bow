class Bow < Formula
  on_macos do
    if Hardware::CPU.arm?
      version "0.1.10-1"
      desc "Chainalysis Bow - fast and confident shipping"
      homepage "https://github.com/chainalysis/bow"
      url "https://fimbulvetr.chainalysis.com/artifactory/generic-test-local/bow-0.1.10-1-go1.25.1-darwin-arm64.tar.xz",
      headers: [
              "Authorization: Bearer #{ENV["HOMEBREW_ARTIFACTORY_TOKEN"]}"
      ]
      sha256 "7714875b5c921ab57ba2bb825662d3158de8df1febb29575c0e02e42d0fa31e3"

      def install
          bin.install "bin/bow"
      end
    end
  end
end
