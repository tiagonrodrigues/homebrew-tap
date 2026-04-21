class AgentReaper < Formula
  desc "Kill the zombie processes your AI coding agents leave behind"
  homepage "https://github.com/tiagonrodrigues/agent-reaper"
  url "https://github.com/tiagonrodrigues/agent-reaper/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "89fbd0e91b337591fe30ee45826b33b4a522b57453ca29c37adcc6d115b4609e"
  license "MIT"
  version "0.4.1"

  depends_on :macos

  def install
    # The `reap` CLI.
    bin.install "reap.sh" => "reap"

    # Keep installer/uninstaller + templates around so `reap install`
    # can find them without curl-fetching from GitHub.
    pkgshare.install "install.sh", "uninstall.sh", "templates"
  end

  def caveats
    <<~EOS
      Install the background agent + macOS .app identity:

        reap install

      This sets up:
        - ~/Applications/Agent Reaper.app    (ad-hoc signed bundle)
        - ~/Library/LaunchAgents/co.tiagor.agent-reaper.plist
        - ~/.config/agent-reaper/config.sh   (seeded with defaults)

      And starts a sweep every 30 minutes via launchd. To remove
      everything later:

        reap uninstall --purge
    EOS
  end

  test do
    assert_match "reap v#{version}", shell_output("#{bin}/reap --version")
  end
end
