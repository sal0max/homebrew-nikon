cask "nx-studio" do
  version "1.5.0"
  sha256 "803e231464f589dcdcd958a57dd288f8824a06735e45b7e1abc18945d2e56890"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/247.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "NX Studio"
  desc "Nikons software suite for viewing, processing and editing images and videos"
  homepage "https://downloadcenter.nikonimglib.com/en/products/564/NX_Studio.html"

  pkg "Installer/NikonInstaller.pkg"

  uninstall pkgutil: "jp.co.nikon.NXStudio.main"
end
