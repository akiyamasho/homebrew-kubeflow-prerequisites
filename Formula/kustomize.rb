class Kustomize < Formula
  desc "Kustomize v3"
  homepage "https://kustomize.io/"
  url "https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv3.10.0/kustomize_v3.10.0_darwin_amd64.tar.gz"
  version "3.10.0"
  sha256 "602ad8aa98e2e17f6c9119e027a09757e63c8bec"
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
