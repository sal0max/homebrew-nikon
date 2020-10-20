cask "wireless-transmitter-utility" do
  version "1.9.4"
  sha256 "4aebddf0a8f1e2bf535ce1712310c56aeec14db075ea073f5f2c8b792c819823"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/179.html").open do |landing_page|
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
