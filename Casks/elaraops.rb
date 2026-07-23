 cask "elaraops" do
    version "1.0.0"

    on_arm do
      url "https://github.com/elaraopsio-hub/elaraops-codebase/releases/download/v#{version}/ElaraOps-#{version}-arm64.dmg"
      sha256 "3c9e5e835b28651b3308b5f4d71bf1810fc91febf21eb6a806869f30cf019338"
    end

    on_intel do
      url "https://github.com/elaraopsio-hub/elaraops-codebase/releases/download/v#{version}/ElaraOps-#{version}.dmg"
      sha256 "9c626b95d7dd1b7e4072094471973a8032d362e72d934b89c11be5ca8e3bf20a"
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
