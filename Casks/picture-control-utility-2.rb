cask "picture-control-utility-2" do
  version "2.4.8"
  sha256 "ddbf60f6e7228026c7b2b7191ee6a5289d7bd4aebe607fdedaa84bac251d082e"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/200.html").open do |landing_page|
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
