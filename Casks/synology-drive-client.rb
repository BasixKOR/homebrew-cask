cask "synology-drive-client" do
  version "7.0.3-50049"
  sha256 "1ee68e183d3c1fb2505cb4b2cc9ce84dd68467f077e9df637161436a7a58e3c7"

  url "https://global.download.synology.com/download/Utility/SynologyDriveClient/#{version}/Mac/Installer/synology-drive-client-#{version.split(' ')[1]}.dmg"
  name "Synology Drive Client"
  desc "A comprehensive solution for file storage, management, sharing, and synchronization."
  homepage "https://www.synology.com/en-us/dsm/packages/SynologyDrive"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/SynologyDriveClient"
    regex(/Version:\s*(\d+(?:\.\d+)*-\d+)/i)
  end

  pkg "Install Synology Drive Client.pkg"
end
