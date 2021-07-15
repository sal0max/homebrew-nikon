cask "wireless-transmitter-utility" do
  version "1.9.5"
  sha256 "79059c363d89e3fd844b9a14d74edf55138eff1280fa75877f8697322e4006d6"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/198.html").open do |landing_page|
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
