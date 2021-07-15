cask "nx-studio" do
  version "1.0.1"
  sha256 "a5a6ffd953f99814aea1e81a76dc0f5c87daeed020e722061d74381e24608676"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/199.html").open do |landing_page|
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
