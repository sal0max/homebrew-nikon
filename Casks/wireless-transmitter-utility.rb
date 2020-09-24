cask "wireless-transmitter-utility" do
  version "1.9.2"
  sha256 "d0234eb8f77474846ea68eee563e6d981b8bcda1ef46878284ba9694b80558e2"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/162.html").open do |landing_page|
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
