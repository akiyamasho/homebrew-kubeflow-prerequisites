class Kustomize < Formula
  desc "Kustomize v3"
  homepage "https://kustomize.io/"
  url "https://github.com/akiyamasho/homebrew-kustomize/releases/download/v3.2.1/kustomize_v3.2.1_darwin_amd64.tar.gz"
  version "3.2.1"
  sha256 "55853611988a412a043c6e846ad20bfcf4c220b7acda17493b25641386773b80"
  head "https://github.com/kubernetes-sigs/kustomize"

  bottle :unneeded

  depends_on "kubernetes-cli"

  def install
    bin.install "kustomize"
  end

  test do
    ohai "Verify that `kustomize --help` contains \"Available Commands\" ..."
    assert_match "Available Commands", shell_output("#{bin}/kfctl --help 2>&1")
  end
end
