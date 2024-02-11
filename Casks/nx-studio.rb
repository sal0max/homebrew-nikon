cask "nx-studio" do
  version "1.6.0"
  sha256 "c270a5c3b0fc84f33fa454b7d9bbda5d9355ce351b3dc455f0286eee329bdef7"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/249.html").open do |landing_page|
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
