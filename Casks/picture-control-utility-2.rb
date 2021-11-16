cask "picture-control-utility-2" do
  version "2.4.9"
  sha256 "e5a647f9e259feebe52008afbdc54bc309c5d3789bb3c9757df62eef5cd60189"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/205.html").open do |landing_page|
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
