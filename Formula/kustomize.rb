class Kustomize < Formula
  desc "Kustomize v3"
  homepage "https://kustomize.io/"
  url "https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv3.2.1/kustomize_kustomize.v3.2.1_darwin_amd64"
  version "3.2.1"
  sha256 "77396530981caeb892bbd371bc16677928897f471f96ae1ab4f65f084c479c2a"
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
