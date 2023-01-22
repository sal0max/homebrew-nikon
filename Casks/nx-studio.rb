cask "nx-studio" do
  version "1.3.1"
  sha256 "cfa4f719ac980722d45ccf02794a273bbc7793be7c31aa16b451248ded424789"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/231.html").open do |landing_page|
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
