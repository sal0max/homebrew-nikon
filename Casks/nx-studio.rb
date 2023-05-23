cask "nx-studio" do
  version "1.4.0"
  sha256 "3445f037543ad1e4e64c30d93bfe9511d2cd97aba81403eb9c40aa72bee08c7a"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/242.html").open do |landing_page|
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
