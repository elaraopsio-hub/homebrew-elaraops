cask "elaraops" do
    version "1.0.0"

    on_arm do
      url "https://github.com/elaraopsio-hub/elaraops-codebase/releases/download/v#{version}/ElaraOps-#{version}-arm64.dmg"
      sha256 "d3b0bc77ad274f0c0e48a4878f9bd083a2996b82b5649e5978b55db97a9d56f2"
    end

    on_intel do
      url "https://github.com/elaraopsio-hub/elaraops-codebase/releases/download/v#{version}/ElaraOps-#{version}.dmg"
      sha256 "48003ce1bbd87da5263fa7a6869208d569ca054a5d91a0b1cd6db96902813a22"
    end

    name "ElaraOps"
    desc "Desktop app for Azure Blob Storage monitoring and management"
    homepage "https://elaraops.com"

    app "ElaraOps.app"

    zap trash: [
      "~/.elaraops",
      "~/Library/Application Support/ElaraOps",
      "~/Library/Preferences/com.elaraops.app.plist",
      "~/Library/Logs/ElaraOps",
      "~/Library/Caches/ElaraOps",
    ]
  end
