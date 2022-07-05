cask "nx-studio" do
  version "1.2.1"
  sha256 "62d6a31ba5d32e9f3ec1dc5cba58ca5cb640b61cb9e0226af6e32143a7268f3b"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/225.html").open do |landing_page|
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
