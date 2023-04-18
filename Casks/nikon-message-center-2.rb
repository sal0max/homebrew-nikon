cask "nikon-message-center-2" do
  version "2.5.0"
  sha256 "69134dbd67e84ffd1f811fc381ecc30c5fbeb89d9de918e9e927109785aac742"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/235.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "Nikon Message Center 2"
  desc "Checks for software and firmware updates"
  homepage "https://downloadcenter.nikonimglib.com/en/products/169/Nikon_Message_Center_2.html"

  pkg "Installers/NikonInstaller.pkg"

  uninstall pkgutil: "jp.co.nikon.MessageCenter2.main",
            delete:  "/Applications/Nikon Software/Nikon Message Center 2"
end
