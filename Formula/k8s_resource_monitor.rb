class K8sResourceMonitor < Formula
    include Language::Python::Virtualenv
  
    desc "K8s Resource Monitor for Kubernetes"
    homepage "https://github.com/shramish2057/k8s_resource_monitor"
    url "https://files.pythonhosted.org/packages/1f/94/de4e79eaa59843fca4f45557b0d18fcda3f20d0b55a2a863dae0209f091d/k8s_resource_monitor-0.1.0.tar.gz"  
    sha256 "91b7c9f1191820daba6e93abbfd2787166777939daf76946555312adec979cb9"  
    license "MIT"
  
    depends_on "python@3.12"  
  
    def install
      virtualenv_install_with_resources
    end
  
    test do
      system "#{bin}/k8s_monitor", "--version"  
    end
  end
  