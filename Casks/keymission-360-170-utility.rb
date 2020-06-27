cask "keymission-360-170-utility" do
  version "1.1.0"
  sha256 "231641f218b2e6470590bc2ad1a9daf1ed95336d086356175ee34f1034ffc806"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/109.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "KeyMission 360/170 Utility"
  homepage "https://downloadcenter.nikonimglib.com/en/products/335/KeyMission_Utility_Installer.html"

  pkg "Installers/NikonInstaller.pkg"

  uninstall :pkgutil => "jp.co.nikon.KeyMissionUtility.main"
end
