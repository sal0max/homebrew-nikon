cask "wireless-transmitter-utility" do
  version "1.11.0"
  sha256 "01a26a6bfa21a938fb6631e5365bc737aeecd232a7f1a066cdbc45e1b10693be"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/245.html").open do |landing_page|
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
