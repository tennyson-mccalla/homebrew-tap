class Genmedia < Formula
  include Language::Python::Virtualenv

  desc "Multimodal media generation CLI for Google GenAI"
  homepage "https://github.com/tennyson-mccalla/genmedia"
  url "https://github.com/tennyson-mccalla/genmedia/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ef59ce32c8758737fc178147a0b6a4cab5be568ee1e7ae7ef8f2ea2eec7591e8"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "genmedia", shell_output("#{bin}/genmedia --version")

    # Dry run doesn't need API key
    output = shell_output("GEMINI_API_KEY=test #{bin}/genmedia image 'test' --dry-run")
    assert_match '"status": "dry_run"', output

    # List models doesn't need API key
    output = shell_output("#{bin}/genmedia image --list-models")
    assert_match "gemini-3.1-flash-image-preview", output
  end
end
