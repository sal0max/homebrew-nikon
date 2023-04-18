cask "nx-studio" do
  version "1.3.2"
  sha256 "550f1df458cdf8bb9fc1d94a26e00eca9d4e3c468f217cac005915d012068018"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/234.html").open do |landing_page|
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
