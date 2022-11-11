cask "wireless-transmitter-utility" do
  version "1.9.8"
  sha256 "fdd9df197898f538c74f19f42d651f7ff0b36209b9c8fe70d7ea1c9915b74c67"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/229.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "Wireless Transmitter Utility"
  desc "Automatically transfer images via the cameras WiFi or Ethernet to a computer"
  homepage "https://downloadcenter.nikonimglib.com/en/products/168/Wireless_Transmitter_Utility.html"

  pkg "Installers/NikonInstaller.pkg"

  uninstall pkgutil: "jp.co.nikon.installer.WTU.main"
end
