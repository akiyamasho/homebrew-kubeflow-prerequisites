class Kustomize < Formula
  desc "Kustomize v3"
  homepage "https://kustomize.io/"
  url "https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv3.10.0/kustomize_v3.10.0_darwin_amd64.tar.gz"
  version "3.10.0"
  sha256 "8fc809455a282f1c9a8574304f61dcaf1f709012739cbddf5d122b1e953588b3"
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
