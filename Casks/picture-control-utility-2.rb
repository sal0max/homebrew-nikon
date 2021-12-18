cask "picture-control-utility-2" do
  version "2.4.10"
  sha256 "25e86223fc86a0d1a94b80fa64756a4156057a3b1f314f5831ba6d229725ee02"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/211.html").open do |landing_page|
      content = landing_page.read
      content.scan(/id="for64".*href="(.*)".*\.dmg/m)
             .flatten
             .first
             .gsub(/&amp;/, "&")
    end
  end
  name "Picture Control Utility 2"
  desc "Color profile editor"
  homepage "https://downloadcenter.nikonimglib.com/en/products/163/Picture_Control_Utility_2.html"

  pkg "Installers/NikonInstaller.pkg"

  uninstall pkgutil: "jp.co.nikon.installer.PictureControlUtility2.main"
end
