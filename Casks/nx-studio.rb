cask "nx-studio" do
  version "1.1.0"
  sha256 "14b76cbfc67e75aa495587e5da3be125dea1152a49f0cd310bddb65413d5b236"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/208.html").open do |landing_page|
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
