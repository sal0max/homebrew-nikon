cask "nx-studio" do
  version "1.1.1"
  sha256 "c3c2f80ea294a00d6dd048251c2a7064518a4f0265636fc664c99cf5041d4b7d"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/212.html").open do |landing_page|
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
