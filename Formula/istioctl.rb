class Istioctl < Formula
  desc "Istio CTL & Anthos Service Mesh CLI tool that works with Kubeflow"
  homepage "https://istio.io/"
  url "https://github.com/akiyamasho/homebrew-kubeflow-prerequisites/releases/download/v1.4.10-istio-asm/istio-1.4.10-asm.18-osx.tar.gz"
  version "1.4.10"
  sha256 "982dee379dc91688e00939c4f80b578e1da3828ddfce9bd4219da7b21c6a5ace"
  head "https://github.com/istio/istio.git"

  bottle :unneeded

  depends_on "kubernetes-cli"

  def install
    bin.install "istioctl"
    bin.install "asmctl"
  end

  test do
    ohai "Verify that `istioctl --help` contains \"Available Commands\" ..."
    assert_match "Available Commands", shell_output("#{bin}/istioctl --help 2>&1")

    ohai "Verify that `asmctl --help` contains \"Available Commands\" ..."
    assert_match "Available Commands", shell_output("#{bin}/asmctl --help 2>&1")
  end
end
