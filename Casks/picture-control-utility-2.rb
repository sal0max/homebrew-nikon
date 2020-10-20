cask "picture-control-utility-2" do
  version "2.4.7"
  sha256 "823b8434ade3cbb19cf29a2c7ab499802369db7be48498b8bd0fb0033b86c809"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/180.html").open do |landing_page|
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
