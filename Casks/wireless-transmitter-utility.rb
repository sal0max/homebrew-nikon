cask "wireless-transmitter-utility" do
  version "1.10.0"
  sha256 "cec2453c380348abbe33fbf00b3d92bc104459b9403e7e6918614ced99e4c7d0"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/237.html").open do |landing_page|
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
