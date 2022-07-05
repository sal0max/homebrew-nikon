cask "wireless-transmitter-utility" do
  version "1.9.7"
  sha256 "1a93404ed555217e0d5a5a8d7b171b8c597b08ffbbc5447e073cdd6c83c5bed9"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/223.html").open do |landing_page|
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
