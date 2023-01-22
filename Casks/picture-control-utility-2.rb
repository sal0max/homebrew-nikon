cask "picture-control-utility-2" do
  version "2.4.14"
  sha256 "2cd90f0c026e56967ac3f9e2c9e834d8608fc11a143447d425f87b08fa325227"

  url do
    require "open-uri"
    URI("https://downloadcenter.nikonimglib.com/en/download/sw/232.html").open do |landing_page|
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
