cask "nx-studio" do
  version "1.2.0"
  sha256 "142a4797d223b69defb54f0aa366d2abfbeeeb9ad7e6b4e600d510d806e76a22"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/218.html").open do |landing_page|
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
