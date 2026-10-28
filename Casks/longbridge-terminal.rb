cask "longbridge-terminal" do
  version "0.31.0"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.31.0/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "66c1de922bf6209d925572d0bdd76c891a8f1976b4d29180a6e7afd5f1e3a565"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.31.0/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "2a8f56af98634ef36b377ef6e72042a24a15eca471a9eb0f99cb7e606feaf294"
  end

  desc "Longbridge Terminal CLI for US and HK stock market data and trading"
  homepage "https://github.com/longbridge/longbridge-terminal"

  binary "longbridge"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}"]
  end

  caveats <<~EOS
    Get started by running:
      longbridge -h
  EOS
end
