cask "longbridge-terminal" do
  version "0.30.0"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.30.0/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "3a2b3f1f7101aa992ae723cf55153116ea576a7915ce4b4ceb14c9aafbfc4ee7"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.30.0/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "8ef43e1dd4ed493d45c4b36629c14c03b9c47196bc30b9a79fadf1a4ca399990"
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
