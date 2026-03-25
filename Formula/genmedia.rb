class Genmedia < Formula
  desc "Multimodal media generation CLI for Google GenAI"
  homepage "https://github.com/tennyson-mccalla/genmedia"
  url "https://github.com/tennyson-mccalla/genmedia/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ef59ce32c8758737fc178147a0b6a4cab5be568ee1e7ae7ef8f2ea2eec7591e8"
  license "MIT"

  depends_on "pipx"
  depends_on "python@3.13"

  def install
    system "pipx", "install", buildpath.to_s, "--python", Formula["python@3.13"].opt_bin/"python3.13"
    # Link the pipx-installed binary into the Homebrew bin
    bin.install_symlink Dir["#{HOMEBREW_PREFIX}/bin/genmedia"]
  end

  def caveats
    <<~EOS
      genmedia is installed via pipx into an isolated environment.
      Make sure GEMINI_API_KEY is set before use:
        export GEMINI_API_KEY="your-key-here"
    EOS
  end

  test do
    assert_match "genmedia", shell_output("#{bin}/genmedia --version")
  end
end
